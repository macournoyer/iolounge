List << := List getSlot("append")

UnitTest clone do(
 testOpAppend := method(
   l := list("a")
   l << "b"
   
   assertEquals(list("a", "b"), l)
 )
) run
