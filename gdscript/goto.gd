## goto
# Goto is a powerful function that is feared by many.
# Unfortunately, we cannot use it in GDScript directly.
# We have to bend gdscript to our will.


var counter := 0
func goto(line := 0) -> int:
  match line:
    00: counter += 1
    01: print(counter)
    02: if counter < 10: goto(0)
    03: return counter
  goto(line + 1)
