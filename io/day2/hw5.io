# Write a prototype for a two-dimensional list.
The dim(x,y) method should allocate a list of y lists that are x elements long, set(x, y, value) should set a value, and get(x, y) should return that value.

List2D := List clone
List2D transposed := false

List2D dim := method(x, y,
    y repeat(self append(Range 0 to(x) asList() map(nil)))
)

List2D set := method(x, y, value,
    self at(x) atPut(y, value)
)

List2D get := method(x, y,
    self at(x) at(y)
)