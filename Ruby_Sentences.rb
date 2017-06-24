array = []

puts "Hi please write a sentence for me"
  reply=gets.chomp
  array << reply.split(" ")

puts "What is your favorite word in #{reply}?"
  fav_word=gets.chomp
puts reply.index(fav_word)