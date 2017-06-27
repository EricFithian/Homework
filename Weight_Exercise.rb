def weight_plate_choices(weight)
  if weight > 45 && weight < 585
    x == (weight/90) * 2 #This is to DRY it up a bit
  else
    p "Please select a weight we will allow."
  end 

  if weight % 45 == 0
    p "You will need #{X} number of 45 pound plates."
  elsif weight % 45 == 10
    p "You will need #{X} number of 45 pound plates and two 5 pound plates."
  elsif weight % 45 == 20
    p "You will need #{X} number of 45 pound plates and two 10 pound plates."
  elsif weight % 45 == 30
    p "You will need #{X} number of 45 pound plates and two 10 and 5 pound plates."
  elsif weight % 45 == 40
    p "You will need #{X} number of 45 pound plates and four 10 pound plates."
  elsif weight % 45 == 50
    p "You will need #{X} number of 45 pound plates and two 25 pound plates."
  elsif weight % 45 == 60
    p "You will need #{X} number of 45 pound plates and two 25 and 5 pound plates."
  elsif weight % 45 == 70
    p "You will need #{X} number of 45 pound plates and two 35 pound plates."
  elsif weight % 45 == 80
    p "You will need #{X} number of 45 pound plates and two 35 and 5 pound plates."
  else
    p "This isn't running."
  end
end


# while true
  p "Welcome to our gym! For your first exercise, please tell us how much you want to lift."
  weight = gets.chomp.to_i
  if weight < 45
    p "You must select a weight of at least 45 pounds."
  elsif weight > 585
    p "We cannot do that weight"
  else
    p weight_plate_choices(weight)
  end
# end​


