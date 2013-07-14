# Write a program to add up all of the numbers in a two-dimensional array.

addUp2DArray := method(array, array flatten reduce(+))

addUp2DArray(list(2,3,4,5)) println
addUp2DArray(list(2,3, list(1,list(2,2),1), 4,5)) println