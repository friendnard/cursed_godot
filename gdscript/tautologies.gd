## Tautologies
# Some functions we expect to be void actually will return things.
# We can use these values in logical statements to one-liner tautologies
# (Tautologies being statements that are always true.),
# as long as we ignore Godot's opinion of the boolean value of null is.

## await
# The await keyword will return a Variant, even if the signal/function doesn't return a value.
# We can guarantee a node is ready in one line.


func do_a_thing_when_ready() -> void:
  $target.is_node_ready() or await $target.ready
  $target.do_a_thing()


## resize()
# Resize returns an Error based on if it was able to allocate the new size.
# But we can guarantee a size.


func string_to_vec3(source:String, delimiter := ",") -> Vector3:
  var parts := source.split(delimiter)
  3 == parts.size() or parts.resize(3)
  return Vector3(parts[0] as float, parts[1] as float, parts[2] as float)


## call()
# Every function can be used as a Callable, and Callable's call returns a value,
# including functions that are usually void.


func remove_dead_children() -> void:
  for child:Node in get_children():
    child.health > 0 or child.queue_free.call()
