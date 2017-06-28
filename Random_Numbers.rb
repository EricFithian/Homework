array = []
while true
    num = rand(1..10)
    if num !=3
        puts num
        array << num
    else
        puts num 
        array << num
        puts "Oh snap. Game over!"
        p array
        break
    end
end

puts array.length
 
puts "There are #{array.count {|x| x < 6 == true}} numbers below six."
