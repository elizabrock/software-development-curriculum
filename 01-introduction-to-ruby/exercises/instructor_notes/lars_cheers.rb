puts "What's your name?"
name = gets.chomp
name = name.upcase

anWords = [ "A" , "E" , "F" , "H" , "I" , "L" , "M" , "N" , "O" , "R" , "S" , "X"]

count = name.length
i = 0

while i < count do
  if anWords.include?(name[i])
    article = "an"
  else
    article = "a"
  end
  puts "Give me "+article+" ..."+name[i]
  i = i + 1
end

if name[count - 1] == "S"
  puts name+" is just grand!"
else
  puts name+"\'s just grand!"
end
