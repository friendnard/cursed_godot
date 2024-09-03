## Exclamations (or BANG! as my CS professor called it)
# Godot supports exclamation marks as operators, which,
# like the C++ which it the engine is built on
# are just a fancy "not"


func duh() -> bool:
  return not true == ! true


# "not" is great when it preceeds a var preceeding a boolean.
# However, imo it's a bit weird before checking non-bools.
# I prefer using ! exclusively for type conversions to bool.

  
var sticky_is_null:bool = not $Sticky
var icky_is_null:bool = ! $Sticky      # BETTER <3


# I hope when you get used to it, it sticks out.
# It's very easy for me to glance at the line and understand it is checking against null.

# Additionally, for checking for existence, !! can be used instead.


var micky_is_real:bool = !! $Micky


# Update 4.3: This next section is now less relevant.
# Freed objects get cast as false now.
# This becomes more important if you are naughty and don't set freed vars to null.
# Freed objects are true and their negatives are true.
# A !! will save you here.


func witness_paradox() -> void:
  $Nicky.free()
  print(bool($Nicky)) # true
  print(bool(! $Nicky)) # true
  print(bool(!! $Nicky)) # false
