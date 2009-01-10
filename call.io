callit := method(
  "
  arg: #{call argAt(0)}
  message: #{call message}
  " interpolate println
)

x := method("activate!" println)
callit(x)
