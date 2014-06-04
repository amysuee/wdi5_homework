#didn't finish "quit" into the menu
#writing 'paramater' code - ie. excluding results and saying 'try again' or whatever

def menu
user_input= nil
	until user_input == "q"
	puts "Your calculator menu"
	print "(b)asic , (a)dvanced, (m)ortgage, (bm)i, (t)rip, (q)uit, :" #add other calulators
	user_input = gets.chomp
	if user_input == "b"
		basic_calc

	elsif user_input == "a"
		advanced_calc

	elsif user_input == "m"
		mortgage_calc

	elsif user_input == "bm"
		bmi_calc

	elsif user_input == "t"
		trip_calc

	elsif user_input == "q"
		end
	end
end

# def read_choice
# 	basic_calc
# 	advanced_calc
# 	gets.chomp.downcase
# end

def basic_calc
	print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide:" 
	user_input = gets.chomp
if user_input == "a"
	add
elsif user_input == "s"
	subtract
elsif user_input == "m"
	multiply
elsif user_input == "d"
	divide
	end
end

def add
	print "First number please: "
	x = gets.chomp.to_i
	print "+ the next: "
	y = gets.chomp.to_i
	print "= "
	puts x + y
end

def subtract
	print "Put your first number here: "
	x = gets.chomp.to_i
	print "- your next number: "
	y = gets.chomp.to_i
	print "= "
	puts x - y
end

def multiply
	print "Put your first number here: "
	x = gets.chomp.to_i
	print "* the next number: "
	y = gets.chomp.to_i
	print "= "
	puts x * y
end

def divide
	print "Put your first number here: "
	x = gets.chomp.to_i
	print "/ your second number: "
	y = gets.chomp.to_f
	print "= "
	puts x / y
end

def advanced_calc
	print "(p)ower, (s)qrt : "
	user_input = gets.chomp
	if user_input == "p"
	power

	else user_input == "s"
	square_root
	end
end

def power
	print "Put your first number here: "
	x = gets.chomp.to_i
	print "^^ to the power of: "
	y = gets.chomp.to_f
	print "= "
	puts x ** y
end

def square_root
	print "Put the number you wish to square root here: "
	x = gets.chomp.to_i
	puts Math.sqrt(x)
end

def mortgage_calc
	print "Let's work out your monthly mortagage repayments. How much did you borrow? "
	p = gets.chomp.to_f
	print "Okay. What is the interest rate (%)? "
	i = gets.chomp.to_f / 100 / 12
	print "Okay and how many payments are you going to be making? "
	n = gets.chomp.to_i
	puts "Your monthly payments are $#{p * i * (1+i) ** n / ((1 + i) ** n - 1)}. "
end

def bmi_calc
	print "How tall are you in metres? "
	x = gets.chomp.to_f
	print "How much do you weigh in kg's? "
	y = gets.chomp.to_f
	puts "your BMI is #{y / x ** 2}."
end

def trip_calc
	print "How far in (km) are you travelling? " 
	a = gets.chomp.to_f
	print "What is the fuel efficiecncy of your car? "
	b = gets.chomp.to_f
	print "How much does your petrol cost per litre? "
	c = gets.chomp.to_f
	print "Speed(km/h) = "
	d = gets.chomp.to_f
	if d > 60
		b -= (d - 60) * 2
	end
	puts "\nYour trip will take #{a / d} hours and cost $#{a / b * c}. "
end

menu