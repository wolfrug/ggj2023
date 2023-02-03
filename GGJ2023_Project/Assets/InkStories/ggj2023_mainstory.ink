INCLUDE ggj2023_functions.ink
INCLUDE ggj2023_memories.ink
INCLUDE ggj2023_travel.ink
INCLUDE ggj2023_locations.ink
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
~currentLocation = Location1
{Move("1")}
Testing travel. 
~allowedLocation+=(Location1, Location2)
->travel_main

==testRunestone
->runestone_main->

+[Try again?]
->testRunestone


==testItemAdding
+ [Add one test item 1]
{alterItemStack(Test, 1)}
Done.
->start
+ [Remove one test item 1]
{alterItemStack(Test, -1)}
Done. #image.one
->start
+ [Add one test item 2]
{alterItemStack(Test2, 1)}
Done. #image.two
->start
+ [Remove one test item 2]
{alterItemStack(Test2, -1)}
Done. 
->start

==end
The end!
->END