1 + "one"

if(0, "is true" print, "is false" print) #true
if("", "is true" print, "is false" print) #true
if(nil, "is true" print, "is false" print) #false

MyObj := Object clone
MyObj proto slotNames

#::= is used to assign something to a previously non-existent slot as well as create a setter for that slot

MyObj myMethod1 := method("Called MyMethod1")
MyObj myMethod2 := method("Called MyMethod2")

MyObj callMethod := method(name, perform(name))
MyObj callMethod("myMethod1")
MyObj callMethod("myMethod2")

