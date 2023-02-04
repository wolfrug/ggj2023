INCLUDE ggj2023_functions.ink
INCLUDE ggj2023_memories.ink
INCLUDE ggj2023_travel.ink
INCLUDE ggj2023_1_nastrond.ink
INCLUDE ggj2023_2_mangroves.ink
INCLUDE ggj2023_3_caves.ink
INCLUDE ggj2023_4_helheim_bridge.ink
INCLUDE ggj2023_5_helheim_descent.ink
INCLUDE ggj2023_6_runestone_field.ink
INCLUDE ggj2023_7_valley.ink
INCLUDE ggj2023_8_forest.ink
INCLUDE ggj2023_9_mimirs_well.ink

{debug:
~allowedLocation+=(Location1, Location2)
->start
}
==start
#image.none
{UpdateInventory()}
{Move(currentLocation)}
{debug:
~allowedLocation+=(Location1, Location2)
}
->currentLocationKnot

==testStuff
Testing travel.
{alterAbility(Luck, 2)}
{alterAbility(Body, 1)}
~allowedLocation+=(Location1, Location2)

+ [{RequireAbility(Body, 2)} Fight!]
{AbilityCheck(Body, 4): You fight, and win.|Nope, you didn't make it.}
->travel_main
+ [{RequireAbility(Luck, 2)} Chance it!]
{AbilityCheck(Luck, 4): Lucky you!|Nope, no luck.}
->travel_main

==testRunestone
->runestone_main->

+[Try again?]
->testRunestone


==testItemAdding
+ [Add one test item 1]
{alterItem(Test, 1)}
Done.
->start
+ [Remove one test item 1]
{alterItem(Test, -1)}
Done. #image.one
->start
+ [Add one test item 2]
{alterItem(Test2, 1)}
Done. #image.two
->start
+ [Remove one test item 2]
{alterItem(Test2, -1)}
Done. 
->start

==end
The end!
->END