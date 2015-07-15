puts "Let's break some eggs and make an omelette Spanish style!"

puts "Scrape the potatoes"
# Using the 'while loop', will run while condition is true (or until the condition becomes false)
counter = 1
while counter <= 5
  puts "Scrape potato #{counter}."
  counter += 1
end

puts "Cut the potatoes into thick slices."
# Using the 'until loop', will run until the condition becomes true (or while condition is false)
counter = 1
until counter == 6
  puts "Cut potato #{counter}."
  counter += 1
end

puts "Add potatoes and onion to the pan"
# Using the 'for variable in range' loop. Whenever you know how many times you will be looping.
for counter in 1..5
  puts "Add potato #{counter} to the pan"
end
puts "Slice onion and add onion to the pan."

puts "Stew gently for 30 minutes, stirring every 5 minutes, until potatoes are softened."
# Using the 'loop do (break if conditional = true)' loop. It will run the statements inside the loop until some condition is met.
minutes = 30
loop do
  minutes -= 1
  next if minutes %5 != 0
    puts "It's time to stir!"
    puts "#{minutes} minutes left."
  break if minutes == 0
end

puts "Strain potatoes and onions through a colander into a large bowl."

puts "Break the eggs and beat them seperately."
# Using the 'each operator', used to iterate over a collection of items, like an array (or list), one at a time.
eggs = [1, 2, 3, 4, 5, 6]
eggs.each do |egg|
  puts "Break egg #{egg}."
end
puts "Beat the eggs seperately."

puts "Then stir into the bowl the potatoes with plenty of salt."
puts "Heat a little of the strained oil in a smaller pan."
puts "Tip everything into the pan and cook on a moderate heat."
puts "When almost set, invert on a plate and slide back into the pan."
puts "Cook a few more minutes."
puts "Slide on to a plate and cool for 10 minutes before serving."

puts "How do you like the recipe?"
3.times {puts "It is very tasty!"}
