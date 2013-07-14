#Add a slot called myAverage to a list that computes the average of all the numbers in a list.
#What happens if there are no numbers in a list? (Bonus: Raise an Io exception if any item in the list is not a number.)

myList := list(1,2,3, "abs")
myList myAverage := method(
    numbersInList := select(x, x asNumber() isNan() not)
    if(numbersInList size > 0, numbersInList reduce(+) / numbersInList size,
    Exception raise("An item in the list is not a number"))
)

myList myAverage println