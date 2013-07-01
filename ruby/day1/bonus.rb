puts 'Pick a number between 1 and 10:'
pick = gets.chomp
random = rand(10)
if pick == random
  puts 'You are correct!'
else
  puts "Sorry, #{pick} is not correct. It was #{random}."
end
