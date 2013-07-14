# How would you change / to return 0 if the denominator is zero?

# The tricky bit is saving a reference to the old method:
Number origDiv := Number getSlot("/")

# Overriding the / method is surprisingly straightforward
Number / = method(denom, if(denom == 0, "Infinity!", self origDiv(denom)))

(4 / 2) println
(4 / 0) println