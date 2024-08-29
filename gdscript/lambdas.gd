## lambdas
# For some reason, people call anonymous functions lambdas.
# I blame Haskell.


func decorated(undecorated:Callable) -> Callable:
  return (
      func() -> void:
        print("Running: %s" % undecorated.get_method())
        undecorated.call())


# Lambdas are disposable and can be instantly called.
# This is usually a worthless fact,
# but there are places where GDScript does not expect code.


var array := (
    func init() -> Array:
       var sink := []
       sink.resize(100)
       return sink
    ).call()


# (Honestly, you'd be better writing a static function for this.)


static func create_array(init_size := 0) -> Array:
  var sink := []
  sink.resize(init_size)
  return sink


# But hey, it's a good way to shame laziness, I guess.


func foo(a := (func() -> int: print("No input!"); return 0).call()) -> void: pass

func _init():
  foo() # prints "No input!"
  foo() # prints "No input!"
  foo(0)
