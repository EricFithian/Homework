#adding products to a category, might exist as category object, has instance method add product, pass it a product, category maintains a growing array
#product object from a class, each category should be its own type

#method that goes over every product and tells you what should be sold within the week (date objects is your hint, get libraries; there is a time object)
#we have a cost and a sell price, so you can figure out how much profit things bring in; revenue is just your sell price
#putting items on sale: a method that says "on sale" and you feed it a percentage until you call a second method to remove sale it'll keep state

#part of program might preload some categories and products built by us, but then allow to enter more
#categories could be hash, values woudl be an array within

class Product
  attr_reader :name, :serial_number, :cost
  attr_accessor :quantity, :sell_price
  def initialize (name, quantity, serial_number, cost, sell_price)
    @name = name
    @quantity = quantity
    @serial_number = serial_number
    @cost = cost
    @sell_price = sell_price
  end

  def restock(qty)
    @quantity += qty
  end

  def sell(qty)
    @quantity -= qty
  end

  def sell_price
    @sell_price #need to change for discounts somehow
  end
end

def print_main_menu
  puts "1. View categories of products."
  puts "2. View an individual product."
  puts "3. Change the quantity of a product."
  puts "4. Add products to any category." 
  puts "5. Exit program."
end

cheese = Product.new('Swiss Cheese', 12, '12JEU49', 0.25, 1.99)
ham = Product.new('Sliced Ham', 17, '12RM9042', 0.60, 3.99)
chicken = Product.new('Hot Dogs', 12, '5423DE5', 0.25, 2.99)
sausage = Product.new('Sausage', 6, '21WEF4', 0.20, 2.99)
meatloaf = Product.new('Meatloaf', 4, '3212DFF', 0.40, 5.99)
donuts = Product.new('Donuts', 12, '32EFW', 0.10, 3.99)
oreos = Product.new('Oreos', 8, 'RVRB898', 0.30, 4.99)
cookies = Product.new('Cookies', 12, 'EFV32435', 0.20, 3.99)
brownies = Product.new('Brownies', 7, '1232DEF', 0.50, 6.99)
cupcakes = Product.new('Cupcakes', 8, '5454DEM', 0.30, 5.99)
asparagus = Product.new('Asparagus', 4, '9898F', 0.70, 3.99)
onions = Product.new('Onions', 12, '32R988V', 0.10, 0.99)
carrots = Product.new('Carrots', 16, '999DEWD', 0.10, 0.99)
brocolli = Product.new('Brocolli', 22, '87DEV', 0.05, 0.99)
kale = Product.new('Kale', 15, 'MEVWN87', 0.02, 0.49)

categories = {"Deli"=>[cheese, ham, chicken, sausage, meatloaf], "Sweets"=>[donuts, oreos, cookies, brownies, cupcakes], "Vegetables"=>[asparagus, onions, carrots, brocolli, kale]} 

loop do
  print_main_menu
  command = gets.chomp
  case command
    when "1"
      puts categories.keys.join(", ")
    when "2"
      puts "Please pick one of the following categories: deli, sweets, or vegetables."
      choice = gets.chomp.capitalize
        if choice == "Deli"
          puts "Choose between cheese, ham, chicken, sausage, or meatloaf."
          choice_food = gets.chomp
          if choice_food == "cheese"
            puts "Name: #{cheese.name}"
            puts "Quantity: #{cheese.quantity}"
            puts "SKU: #{cheese.serial_number}"
            puts "MSRP: $#{cheese.cost}"
            puts "Price: $#{cheese.sell_price}"
          elsif choice_food == "ham"
            puts "Name: #{ham.name}"
            puts "Quantity: #{ham.quantity}"
            puts "SKU: #{ham.serial_number}"
            puts "MSRP: $#{ham.cost}"
            puts "Price: $#{ham.sell_price}"
          elsif choice_food == "chicken"
            puts "Name: #{chicken.name}"
            puts "Quantity: #{chicken.quantity}"
            puts "SKU: #{chicken.serial_number}"
            puts "MSRP: $#{chicken.cost}"
            puts "Price: $#{chicken.sell_price}"
          elsif choice_food == "sausage"
            puts "Name: #{sausage.name}"
            puts "Quantity: #{sausage.quantity}"
            puts "SKU: #{sausage.serial_number}"
            puts "MSRP: $#{sausage.cost}"
            puts "Price: $#{sausage.sell_price}"
          elsif choice_food == "meatloaf"
            puts "Name: #{meatloaf.name}"
            puts "Quantity: #{meatloaf.quantity}"
            puts "SKU: #{meatloaf.serial_number}"
            puts "MSRP: $#{meatloaf.cost}"
            puts "Price: $#{meatloaf.sell_price}"                 
          else 
            puts "That is not a valid option. Please try again."
          end         
        elsif choice == "Sweets"
          puts "Choose between donuts, oreos, cookies, brownies, or cupcakes."
          choice_food = gets.chomp
          if choice_food == "donuts"
            puts "Name: #{donuts.name}"
            puts "Quantity: #{donuts.quantity}"
            puts "SKU: #{donuts.serial_number}"
            puts "MSRP: $#{donuts.cost}"
            puts "Price: $#{donuts.sell_price}"
          elsif choice_food == "oreos"
            puts "Name: #{oreos.name}"
            puts "Quantity: #{oreos.quantity}"
            puts "SKU: #{oreos.serial_number}"
            puts "MSRP: $#{oreos.cost}"
            puts "Price: $#{oreos.sell_price}"
          elsif choice_food == "cookies"
            puts "Name: #{cookies.name}"
            puts "Quantity: #{cookies.quantity}"
            puts "SKU: #{cookies.serial_number}"
            puts "MSRP: $#{cookies.cost}"
            puts "Price: $#{cookies.sell_price}"
          elsif choice_food == "brownies"
            puts "Name: #{brownies.name}"
            puts "Quantity: #{brownies.quantity}"
            puts "SKU: #{brownies.serial_number}"
            puts "MSRP: $#{brownies.cost}"
            puts "Price: $#{brownies.sell_price}"
          elsif choice_food == "cupcakes"
            puts "Name: #{cupcakes.name}"
            puts "Quantity: #{cupcakes.quantity}"
            puts "SKU: #{cupcakes.serial_number}"
            puts "MSRP: $#{cupcakes.cost}"
            puts "Price: $#{cupcakes.sell_price}"                 
          else 
            puts "That is not a valid option. Please try again."
          end     
        elsif choice == "Vegetables"
          puts "Choose between asparagus, onions, carrots, brocolli, or kale."
          choice_food = gets.chomp
          if choice_food == "asparagus"
            puts "Name: #{asparagus.name}"
            puts "Quantity: #{asparagus.quantity}"
            puts "SKU: #{asparagus.serial_number}"
            puts "MSRP: $#{asparagus.cost}"
            puts "Price: $#{asparagus.sell_price}"
          elsif choice_food == "onions"
            puts "Name: #{onions.name}"
            puts "Quantity: #{onions.quantity}"
            puts "SKU: #{onions.serial_number}"
            puts "MSRP: $#{onions.cost}"
            puts "Price: $#{onions.sell_price}"
          elsif choice_food == "carrots"
            puts "Name: #{carrots.name}"
            puts "Quantity: #{carrots.quantity}"
            puts "SKU: #{carrots.serial_number}"
            puts "MSRP: $#{carrots.cost}"
            puts "Price: $#{carrots.sell_price}"
          elsif choice_food == "brocolli"
            puts "Name: #{brocolli.name}"
            puts "Quantity: #{brocolli.quantity}"
            puts "SKU: #{brocolli.serial_number}"
            puts "MSRP: $#{brocolli.cost}"
            puts "Price: $#{brocolli.sell_price}"
          elsif choice_food == "kale"
            puts "Name: #{kale.name}"
            puts "Quantity: #{kale.quantity}"
            puts "SKU: #{kale.serial_number}"
            puts "MSRP: $#{kale.cost}"
            puts "Price: $#{kale.sell_price}"                 
          else 
            puts "That is not a valid option. Please try again."
          end     
        else
          puts "That is not a valid command, please try again."
        end



    when "3";
      puts "Placeholder"
    #would have to involve the restock and sell methods



    when "4";
      puts "What category would you like to add to? Please select Deli, Sweets, or Vegetables."
      add = gets.chomp.capitalize
      if add == "Deli"
        puts "What food would you like to add to #{add}? Please write the name."
        new_food_name = gets.chomp
        categories[:Deli] = "new_food_name"
        puts "You've successfully added #{new_food_name} to #{add}!"
      elsif add == "Sweets"
        puts "What food would you like to add to #{add}? Please write the name."
        new_food_name = gets.chomp
        categories[:Sweets] = "new_food_name"
        puts "You've successfully added #{new_food_name} to #{add}!"
      elsif add == "Vegetables"
        puts "What food would you like to add to #{add}? Please write the name."
        new_food_name = gets.chomp
        categories[:Vegetables] = "new_food_name"
        puts "You've successfully added #{new_food_name} to #{add}!"
      else
        puts "We don't have those categories."
      end 

    when "5";
      puts "Bye!"
      break
    else 
      puts "Unrecognized command."
    end
end