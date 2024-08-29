## Backslashes
# Backslashes exist only for unintended behavior and characters.
# Today, the unintended is us and our behavior.


var add_a_bunch := \
    + 1 \
    + 2 \
    + 3


# A lot of multiline expressions can be better captured by using parentheses.
# The better use of backslashes is to change the flow of if statements.


func check_on_dave() -> Error:
  if !! $Dave \
  and $Dave.is_node_ready():
    return OK;
  return ERR_UNAVAILABLE;


func someone_has_sugar() -> bool:
  if $Dave.has_sugar() \
  or $Molly.has_sugar() \
  or $Jerome.has_sugar():
    return true
  return false


# Better yet, we can make match statments look closer to C++ switch statements


func get_pet(person_name:String) -> String:
  match person_name:

    "Dave", \
    "Molly":
      return "Dog"

    "Jerome", \
    "Reika":
      return "Cat"
