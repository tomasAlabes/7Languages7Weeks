# 1.Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable

sixteen = [*(1..16)]
sixteen.each do |number|
  p sixteen[((number-4)...number)] if number % 4 == 0
end

sixteen.each_slice(4) { |slice| slice }