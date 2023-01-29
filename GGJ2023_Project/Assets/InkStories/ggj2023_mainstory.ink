INCLUDE ggj2023_functions.ink
INCLUDE ggj2023_memories.ink


==start
What do you want to do?

+ [{UseButton("test")}Add one test item 1]
{alterItemStack(Test, 1)}
Done.
->start
+ [{Move("one")}Remove one test item 1]
{alterItemStack(Test, -1)}
Done. #image.one
->start
+ [{Move("two")}Add one test item 2]
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