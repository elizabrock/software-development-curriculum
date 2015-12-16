# Build on the results of our in-class exploration to output, for example:
# Give me an... A
# Give me a... B
# Give me a... B
# Give me a... Y
# ABBY’s just GRAND!
# When given the input of “Abby”. Note: the “a” vs. “an”

puts "What's your name?"
name = gets
puts "Thanks, "+name
puts "This is where the cheer would go"


# mychar = 'a'
# mychar == 'a' #=> true

count = name.length
i = 0
while i < count do
  puts name[i]
  i = i + 1
end

puts "Or:"

name.each_char do |char|
  puts char
end
