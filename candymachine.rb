puts "Welcome to Ada's Computer Candy Machine!"
puts "(All candy provided is virtual.)\n"

#Get how much money user has
print "\nHow much money do ya got? > $"
money = gets.chomp.to_f

#'%.2f' % => formats money to 2 decimals
puts "\n$#{'%.2f' % money}. that's all?"
puts "Well, lemme tell ya what we got here.\n\n"

#Choices
puts "A $0.65 Twix"
puts "B $0.50 Chips"
puts "C $0.75 Nutter Butter"
puts "D $0.65 Peanut Butter Cup"
puts "E $0.55 Juicy Fruit Gum"

print "\nSo, what'll ya have? > "

#Get choice prompt from user
choice = gets.chomp.upcase

#Candy Prices
candyA = 0.65
candyB = 0.50
candyC = 0.75
candyD = 0.65
candyE = 0.55

#Function for getting change
def changeMaker(money, candyPrice)
	puts "\nThanks for purchasing candy through us."
	puts "Please take your candy, and your $#{'%.2f' % (money - candyPrice)} change!"
end

#Conditionals
if choice == 'A' && money >= candyA
	changeMaker money, candyA
elsif choice == 'B' && money >= candyB
	changeMaker money, candyB
elsif choice == 'C' && money >= candyC
	changeMaker money, candyC
elsif choice == 'D' && money >= candyD
	changeMaker money, candyD
elsif choice == 'E' && money >= candyE
	changeMaker money, candyE
else
	puts "You're broke. Take your #{'%.2f' % money} and go elsewhere."
end

