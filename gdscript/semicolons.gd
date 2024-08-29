## Semicolons
# Godot supports semicolons. Nothing good can come of this.
# They behave like in Python, for doing sinful things,
#   in particular, multiple operations in the same line:


func get_job() -> void: print("1"); print("2"); print("fizz"); print("4"); print("buzz")


# However, we can mix this with another important concept: meaningless statements.
# These can prepend comments for lines using strings


func is_null() -> bool:
  "unlikely"; if this == null:
    push_error("how?")
    return true
  return false


# or number lines for our poetry.


func love() -> void:
  0;   var roses := Color("red")
  1;   var violets := Color("blue")
  2;   assert(1 + 1 == 2)


# In fact, we can be more avant-garde.


func get_risotto() -> void:
  0;      $Wine.order()
  1;  $Parmesan.order()
  2;      $Rice.order()
  3;  $OliveOil.order()
  4;            await $Oven.ready


# Weirdly, they don't need the meaningless statement,
# as long as the previous line isn't a higher indent.
# This is likely a bug because no one would ever do this.


func meme_array() -> Array:
  var array := Array()
  ;   array.resize(100)
  ;   array[69] = "nice"
  ;   return array
