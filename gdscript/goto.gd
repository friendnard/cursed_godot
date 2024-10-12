## goto
# Goto is a powerful function that is feared by many.
# Unfortunately, we cannot use it in GDScript directly.
# We have to bend gdscript to our will.
# Nothing can stop us (except for the stack limit).

## Header
# We have to pre-declare our variables here.
var counter := 0

# main loop
func goto(line:Variant = 0) -> int:
  match line:
    00, "loop_start": counter += 1 # this line is named "loop_start"
    01: print(counter)
    # while loops? we have goto
    02: if counter < 10: goto("loop_start")
    03: return counter
  goto(line + 1)
