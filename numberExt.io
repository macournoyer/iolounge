Number times := method(
  i := 0
  while(i < self,
    if(call argCount == 1,
      call evalArgAt(0)
    ,
      call sender setSlot(call argAt(0) name, i)
      call evalArgAt(1)
    )
    i = i + 1
  )
)

5 times("ohaie" println)
5 times(i, i println)