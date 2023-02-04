LIST MainInventory = Test, Test2, BaseItem
LIST AbilityInventory = (Body), (Mind), (Follower), (Luck)
VAR Body_stack = 0
VAR Mind_stack = 0
VAR Follower_stack = 0
VAR Luck_stack = 0
VAR Test_stack = 0
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
~temp displayName = variable
~temp result = amount
~temp stackableVar = false
{variable:
- Body:
~displayName = "Hamr"
~result = h_alterStack(Body_stack, amount, 10)
~stackableVar = true
- Mind:
~displayName = "Hugr"
~result = h_alterStack(Mind_stack, amount, 10)
~stackableVar = true
- Luck:
~displayName = "Hamingja"
~result = h_alterStack(Luck_stack, amount, 10)
~stackableVar = true
- Follower:
~displayName = "Fylgja"
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
~temp displayName = variable
~temp result = amount
~temp stackableVar = false
{variable:
- Test:
~displayName = "Test 1"
~result = h_alterStack(Test_stack, amount, 3)
{Test_stack<=0 && result<0:
~removeItem = true
}
~stackableVar = true
- Test2:
// has no stack
~displayName = "Test 2"
- BaseItem:
// has no stack
~displayName = "Base Item"
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


===function IsInteractable(b) // again, in case we change things or wt
{b:
INTERACTABLE(true)
-else:
INTERACTABLE(false)
}
===function UseButton(b) // just in case we change things or whatever
LOCATION({b})

===function Move(to)
MOVE({to})