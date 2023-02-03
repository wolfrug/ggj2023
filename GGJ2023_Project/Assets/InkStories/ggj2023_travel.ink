LIST allowedLocation = Location1,Location2,Location3,Location4,Location5,Location6, Location7,Location8,Location9
VAR currentLocation = ()

==travel_main
//Go here whenever we want to go somewhere
#continue
+ {debug && allowedLocation?Location1} [{IsInteractable(allowedLocation?Location1)}{UseButton("1")}{Move("1")}Go to 1]
->location1
+ {debug && allowedLocation?Location2}[{IsInteractable(allowedLocation?Location2)}{UseButton("2")}{Move("2")}Go to 2]
->location2
+ {debug && allowedLocation?Location3}[{IsInteractable(allowedLocation?Location3)}{UseButton("3")}{Move("3")}Go to 3]
->location3
+ {debug && allowedLocation?Location4}[{IsInteractable(allowedLocation?Location4)}{UseButton("4")}{Move("4")}Go to 4]
->location4
+ {debug && allowedLocation?Location5}[{IsInteractable(allowedLocation?Location5)}{UseButton("5")}{Move("5")}Go to 5]
->location5
+ {debug && allowedLocation?Location6}[{IsInteractable(allowedLocation?Location6)}{UseButton("6")}{Move("6")}Go to 6]
->location6
+ {debug && allowedLocation?Location7}[{IsInteractable(allowedLocation?Location7)}{UseButton("7")}{Move("7")}Go to 7]
->location7
+ {debug && allowedLocation?Location8}[{IsInteractable(allowedLocation?Location8)}{UseButton("8")}{Move("8")}Go to 8]
->location8
+ {debug && allowedLocation?Location9}[{IsInteractable(allowedLocation?Location9)}{UseButton("9")}{Move("9")}Go to 9]
->location9
+ ->error

=error
There were NO locations available, and thus we arrived at this error. Oops.
->END
=location1
~currentLocation = Location1
->1_nastrond
+ [Back to travel.]
->travel_main
=location2
~currentLocation = Location2
->2_mangroves
+ [Back to travel.]
->travel_main
=location3
~currentLocation = Location3
->3_caves
+ [Back to travel.]
->travel_main
=location4
~currentLocation = Location4
->4_helheim_bridge
+ [Back to travel.]
->travel_main
=location5
~currentLocation = Location5
->5_helheim_descent
+ [Back to travel.]
->travel_main
=location6
~currentLocation = Location6
->6_runestone_field
+ [Back to travel.]
->travel_main
=location7
~currentLocation = Location7
->7_valley
+ [Back to travel.]
->travel_main
=location8
~currentLocation = Location8
->8_forest
+ [Back to travel.]
->travel_main
=location9
~currentLocation = Location9
->9_mimirs_well
+ [Back to travel.]
->travel_main