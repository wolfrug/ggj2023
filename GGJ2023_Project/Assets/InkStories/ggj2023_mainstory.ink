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
//~allowedLocation+=(Location1, Location2)
->start
}
==start
#image.none
{start < 2:
->setStartingStats->
}
{UpdateInventory()}
{Teleport(currentLocation)}
{Teleport(Location7)}
//{alterItem(Draupnir, 1)}
->valley_main
/*{debug:
->testItemAdding
~allowedLocation+=(Location1, Location2)
"Quite something." You say. #image.player
"Isn't it?" Nyrna agrees. #image.nyrna
"What're we talking about?" #image.angrboda
"Yeah, tell us." #image.sigyn
"I can't see shit." #image.loki
"Haha, wanna party?" #image.hel
"Always, sister.", #image.fenrir
"Nevermind." #image.none
}
*/
->currentLocationKnot

==setStartingStats
// What stats we have in the beginning!
~Body_stack = RANDOM(4,6)
~Mind_stack = RANDOM(4,6)
~Luck_stack = RANDOM(2,8)
~Follower_stack = 10
->->
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
{alterItem(Mead, 1)}
Done.
->testItemAdding
+ [Remove one test item 1]
{alterItem(Mead, -1)}
Done. #image.one
->testItemAdding
+ [Add one test item 2]
{alterItem(Bracteate, 1)}
Done. #image.two
->testItemAdding
+ [Remove one test item 2]
{alterItem(Bracteate, -1)}
Done. 
->testItemAdding
+ [{RequireItem(Mead)} Test Check.]
->testStuff

==end
The end!
->END