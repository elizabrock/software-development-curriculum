# When given the input of "Abby"
# Give me an ... A
# Give me a ... B
# Give me a ... B
# Give me a ... Y
# ABBY's just GRAND!

puts "What's your name?"
name = gets.upcase.chomp
vowels = ['A', 'E', 'I', 'O', 'U']

name.each_char do |char|
  if vowels.include?(char)
    article = 'an'
  else
    article = 'a '
  end
  puts 'Give me ' + article + ' ... ' + char
end

puts "#{name}'s just GRAND!"
