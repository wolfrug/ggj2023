INCLUDE ggj2023_functions.ink
INCLUDE ggj2023_memories.ink

VAR currentKnot = ->start
==start
Testing runestone
->testRunestone

~currentKnot = ->1_0
->currentKnot

==testRunestone
The runestone has the text:

SHOW_RUNESTONE(true)This is a lot of text.<br> <br><>

On multiple lines.<br> <br><>

That will be turned into weird runetext.<br> <br><>

So we can't have too much.

+ [Erase the text.]
The text disappears. #eraseRunes

++ [SHOW_RUNESTONE(false) Destroy the runestone.]
That's it, we're done.

- Carrying on with our lives.

+[Try again?]
->testRunestone



==1_0
This is the start, from here you can go to one, two or three.

+ [{UseButton("1.1")}{Move("1.1")}Go to 1.1.]
->1_1
+ [{UseButton("1.2")}{Move("1.2")}Go to 1.2.]
->1_2
+ [{UseButton("1.3")}{Move("1.3")}Go to 1.3.]
->1_3

=1_1
You arrived at 1.1. From here you can go to 1.2, 2.1 or 2.2. #clearText

+ [{UseButton("1.2")}{Move("1.2")}Go to 1.2.]
->1_2
+ [{UseButton("2.1")}{Move("2.1")}Go to 2.1.]
->2_0.2_1
+ [{UseButton("2.2")}{Move("2.2")}Go to 2.2.]
->2_0.2_2

=1_2
You arrived at 1.2. From here you can go to 1.1, 1.3, 2.1, 2.2 or 2.3. #clearText

+ [{UseButton("1.1")}{Move("1.1")}Go to 1.1.]
->1_2
+ [{UseButton("1.3")}{Move("1.3")}Go to 1.3.]
->1_3
+ [{UseButton("2.1")}{Move("2.1")}Go to 2.1.]
->2_0.2_1
+ [{UseButton("2.2")}{Move("2.2")}Go to 2.2.]
->2_0.2_2
+ [{UseButton("2.2")}{Move("2.2")}Go to 2.3.]
->2_0.2_3
=1_3
You arrived at 1.3. From here you can go to 1.2, 2.2 or 2.3. #clearText

+ [{UseButton("1.2")}{Move("1.2")}Go to 1.2.]
->1_2
+ [{UseButton("2.2")}{Move("2.2")}Go to 2.2.]
->2_0.2_1
+ [{UseButton("2.3")}{Move("2.3")}Go to 2.3.]
->2_0.2_2

==2_0
This doesn't really exist.
->2_2
=2_1
You got to 2.1. So far you can only go to 3_0. #clearText

+ [{UseButton("3.0")}{Move("3.0")}Go to 3.0.]
->3_0
=2_2
You got to 2.2. So far you can only go to 3_0. #clearText

+ [{UseButton("3.0")}{Move("3.0")}Go to 3.0.]
->3_0
=2_3
You got to 2.3. So far you can only go to 3_0. #clearText

+ [{UseButton("3.0")}{Move("3.0")}Go to 3.0.]
->3_0

==3_0
The end, for now. #clearText

+ [Finish]
#continue
->END


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