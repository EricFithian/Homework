puts "Hey there, tell me something interesting."
reply=gets.chomp
puts "What is your favorite word in '#{reply}'?"
fav_word=gets.chomp
puts reply.index(fav_word)