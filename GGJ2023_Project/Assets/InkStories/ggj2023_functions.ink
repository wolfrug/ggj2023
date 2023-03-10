LIST MainInventory = Mead, Bracteate, Feather, Laevateinn, Draupnir, Lucet, Vial
LIST AbilityInventory = (Body), (Mind), (Follower), (Luck)
LIST DamageSeverity = (None), (Small), (Medium), (Large)
VAR Body_stack = 0
VAR Mind_stack = 0
VAR Follower_stack = 0
VAR Luck_stack = 0
VAR Mead_stack = 0

VAR wagered_laevateinn = false
VAR runestones_seen = 0
VAR mimirs_points = 0

VAR debug = true

===function UpdateInventory()
// We'll probably only have one so...
INV_SET(MainInventory)
INV_SET(AbilityInventory)

===function h_alterStack(ref var, amount, maxStack)
// Clean-up function
// returns actual value change
~temp previousVal = var
~temp returnVal = amount
~var+=amount
// Clamping max
{var>maxStack:
~var = maxStack
~returnVal = maxStack-previousVal
}
// Clamping min
{var<0:
~var = 0
~returnVal = previousVal
}
~return returnVal

===function alterAbility(variable, amount)
// Use this to alter items with stacks - variable should be the -inventory- variable
~temp removeItem = false
~temp removeFromStack = false
~temp addItem = false
~temp displayName = DisplayName(variable)
~temp result = amount
~temp stackableVar = false
{variable:
- Body:
~result = h_alterStack(Body_stack, amount, 10)
~stackableVar = true
- Mind:
~result = h_alterStack(Mind_stack, amount, 10)
~stackableVar = true
- Luck:
~result = h_alterStack(Luck_stack, amount, 10)
~stackableVar = true
- Follower:
~result = h_alterStack(Follower_stack, amount, 10)
~stackableVar = true
}
// stackable variables do this
{stackableVar:
{result>0:
~addItem = true
}
{result<0:
~removeFromStack = true
}
- else:
// non-stackable variables do this
{amount<0 && AbilityInventory?variable:
~removeItem = true
}
}
// If it's > 0 and the inventory does not have it, add it here
{not (AbilityInventory?variable) && amount > 0:
~AbilityInventory+=variable
~addItem = true
}
{removeItem:
~AbilityInventory-=variable
}
{result<0:
~result = result * -1
}
{addItem || removeItem || removeFromStack:
{UpdateInventory()} <color=yellow>{removeItem||removeFromStack: {displayName} decreased.}{addItem: {displayName} increased!}</color>
}
===function alterItem(variable, amount)
// Use this to alter items with stacks - variable should be the -inventory- variable
~temp removeItem = false
~temp removeFromStack = false
~temp addItem = false
~temp displayName = DisplayName(variable)
~temp result = amount
~temp stackableVar = false
{variable:
- Mead:
~result = h_alterStack(Mead_stack, amount, 3)
{Mead_stack<=0 && result<0:
~removeItem = true
}
~stackableVar = true
}
// stackable variables do this
{stackableVar:
{result>0:
~addItem = true
}
{result<0:
~removeFromStack = true
}
- else:
// non-stackable variables do this
{amount<0 && MainInventory?variable:
~removeItem = true
}
}
// If it's > 0 and the inventory does not have it, add it here
{not (MainInventory?variable) && amount > 0:
~MainInventory+=variable
~addItem = true
}
{removeItem:
~MainInventory-=variable
}
{result<0:
~result = result * -1
}
{addItem || removeItem || removeFromStack:
{UpdateInventory()} <color=yellow>{removeItem||removeFromStack: Removed {result} {displayName}!}{addItem: Added {result} {displayName}!}</color>
}

===function GetStack(variable)
{variable:
- Body:
~return Body_stack
- Mind:
~return Mind_stack
- Luck:
~return Luck_stack
- Follower:
~return Follower_stack
}
~return 0

===function DisplayName(variable)
{variable:
- Body:
~return "Hamr"
- Mind:
~return "Hugr"
- Luck:
~return "Hamingja"
- Follower:
~return "Fylgja"
- Feather:
~return "Feather from Fjaedrhamr"
- Mead:
~return "Mead of Poetry"
- Laevateinn:
~return "The Laevateinn"
- Bracteate:
~return "Bracteate"
- Draupnir:
~return "Draupnir"
- Lucet:
~return "Hel's Lucet"
- Vial:
~return "Vial of Tears"
}
~return variable

===function RequireAbility(ability, minimum)
~temp hasEnough = GetStack(ability)>=minimum
{hasEnough:<color=green>|<color=red>}{IsInteractable(hasEnough)}[{GetStack(ability)}/{minimum} {DisplayName(ability)}]</color>

===function RequireItem(item)
{MainInventory?item:<color=green>|<color=red>}{IsInteractable(MainInventory?item)}[Requires {DisplayName(item)}]</color>

===function AbilityCheck(ability, number)
~temp stack = GetStack(ability)
~temp success = false
~temp randomRoll = RANDOM(0,100)
~temp percentageNeeded = (stack * 100) / number
{stack<1:
~success = false
}
{ability:
- Body:
{stack>number: // We are -better- than the target nr.
~success = true
- else:
{stack==number: // Exactly equal -> we use luck
~success = AbilityCheck(Luck, Luck_stack)
- else: // It is smaller -> just roll
~success = randomRoll<=percentageNeeded
}
}
- Mind:
{stack>number: // We are -better- than the target nr.
~success = true
- else:
{stack==number: // Exactly equal -> we use luck
~success = AbilityCheck(Luck, Luck_stack)
- else: // It is smaller -> just roll
~success = randomRoll<=percentageNeeded
}
}
- Luck:
// Just a regular ol' dice roll

~success = randomRoll<percentageNeeded
- Follower:
// Special case, where it always succeeds, but has a set chance to lower stack
{stack>0:
~temp lowerStat = RANDOM(0,1)>0
{lowerStat:
{alterAbility(Follower, -number)}
}
~return true
}
}
{success:
<color=green><>
- else:
<color=red><>
}
(Rolled {randomRoll} against {percentageNeeded})</color>
~return success

===function AbilityDamage(ability, severity)
{severity:
- Small:
{alterAbility(ability, -RANDOM(1,2))}
- Medium:
{alterAbility(ability, -RANDOM(2,4))}
- Large:
{alterAbility(ability, -RANDOM(4,6))}
}
===function IsInteractable(b) // again, in case we change things or wt
{b:
INTERACTABLE(true)
-else:
INTERACTABLE(false)
}
===function UseButton(b) // just in case we change things or whatever
LOCATION({b})

===function Move(to)
~temp toString = to
{to:
-Location1:
~toString = "1"
-Location2:
~toString = "2"
-Location3:
~toString = "3"
-Location4:
~toString = "4"
-Location5:
~toString = "5"
-Location6:
~toString = "6"
-Location7:
~toString = "7"
-Location8:
~toString = "8"
-Location9:
~toString = "9"
}
MOVE({toString})

===function Teleport(to)
~temp toString = to
{to:
-Location1:
~toString = "1"
-Location2:
~toString = "2"
-Location3:
~toString = "3"
-Location4:
~toString = "4"
-Location5:
~toString = "5"
-Location6:
~toString = "6"
-Location7:
~toString = "7"
-Location8:
~toString = "8"
-Location9:
~toString = "9"
}
TELEPORT({toString})