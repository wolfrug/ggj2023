VAR trackableVariable = 0
LIST MainInventory = Test, Test2, BaseItem
VAR Test_stack = 0


===function UpdateInventory()
// We'll probably only have one so...
INV_SET(MainInventory)

===function alterStack(ref var, amount, maxStack)
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

===function alterItemStack(variable, amount)
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
~result = alterStack(Test_stack, amount, 3)
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


===function IsInteractable(b)
{b:
INTERACTABLE(true)
-else:
INTERACTABLE(false)
}


==start
What do you want to do?

+ [Add one test item 1]
{alterItemStack(Test, 1)}
Done.
->start
+ [Remove one test item 1]
{alterItemStack(Test, -1)}
Done.
->start
+ [Add one test item 2]
{alterItemStack(Test2, 1)}
Done.
->start
+ [Remove one test item 2]
{alterItemStack(Test2, -1)}
Done.
->start

==end
The end!
->END

==continue
Hi there. This is set in the other scene, just to show how easily variables and things carry over.

In the previous scene, we increased trackableVariable to {trackableVariable}. Nice.

Welp, that was that. Let's load the other scene back.

+ [Load me back, Scotty! LOAD_SCENE(SampleScene)]
[This text won't be visible.]
+ [Don't load me back.]
Okely, fine by me.
- 
->END

==exampleStringTable
PLAYER_BARK() This is a player bark.

OTHER_BARK() Example of another bark.

PLAYER_BARK() More player bark.

PLAYER_BARK() Even more player bark.

OTHER_BARK() And other bark.

PLAYER_BARK(good) This is an example of a bark with an argument (good).

PLAYER_BARK(good) Which could for example be used as a unit.

PLAYER_BARK(bad) Another example of an argument bark with the argument bad.

PLAYER_BARK(bad) These will also show up though in the generic list of player barks.
->END