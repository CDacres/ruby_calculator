def invalid
	puts "Error. You did not enter one of the possible commands."
end

repeat = true
until repeat == false
	puts "This is your Ruby Calculator \nPlease select which Calculator mode to access. \nEnter b for basic mode. \nEnter a for advanced mode."
	calc_mode = gets.chomp.downcase
	case calc_mode
		when "b"
			puts "You've selected basic mode. \nPlease select which calculation to perform: \nFor Addition, please enter a. \nFor Subtraction, please enter s. \nFor Multplication, please enter m. \nFor Division, please enter d."
			calculation = gets.chomp.downcase
			case calculation
				when "a"
					puts "You have selected Addition. \nPlease enter your first number."
					number1 = gets.chomp.to_f
					puts "Please enter your second number to add to the first."
					number2 = gets.chomp.to_f
					result = number1 + number2
					puts "Your result is: \n#{number1} + #{number2} = #{result}"
				when "s"
					puts "You have selected Subtraction. \nPlease enter your first number."
					number1 = gets.chomp.to_f
					puts "Please enter your second number to subtract from the first."
					number2 = gets.chomp.to_f
					result = number1 - number2
					puts "Your result is: \n#{number1} - #{number2} = #{result}"
				when "m"
					puts "You have selected Multplication. \nPlease enter your first number."
					number1 = gets.chomp.to_f
					puts "Please enter your second number to multiply the first by."
					number2 = gets.chomp.to_f
					result = number1 * number2
					puts "Your result is: \n#{number1} x #{number2} = #{result}"
				when "d"
					puts "You have selected Division. \nPlease enter your first number."
					number1 = gets.chomp.to_f
					puts "Please enter your second number to divide the first by."
					number2 = gets.chomp.to_f
					result = number1 / number2
					puts "Your result is: \n #{number1} / #{number2} = #{result}"	
				else
					invalid
			end
		when "a"
			puts "You've selected advanced mode. \nPlease select which calculation to perform: \nFor Powers, please enter p. \nFor Square Root, please enter sq. \nFor BMI calculator, please enter bmi. \nFor trip calculator, please enter t."
			calculation = gets.chomp.downcase
			case calculation
				when "p"
					puts "You have selected Powers. \nPlease enter your first number which will be the base."
					number1 = gets.chomp.to_f
					puts "Please enter your second number which will be the exponent."
					number2 = gets.chomp.to_f
					result = number1 ** number2
					puts "Your result is: \n #{number1} ^ #{number2} = #{result}"
				when "sq"
					puts "You have selected Square Root. \nPlease enter the number you wish to determine the square root of."
					number1 = gets.chomp.to_f
					result = Math.sqrt(number1)
					puts "Your result is: \nSquare Root of #{number1} = #{result}"
				when "bmi"
					puts "You have selected BMI calculator. \nTo use metric measurements, please enter m. \nTo use imperial measurements, please enter i."
					units = gets.chomp.downcase
					case units
						when "m"
							puts "You have selected metric. \nPlease enter your mass in kg."
							mass = gets.chomp.to_f
							puts "Please enter your height in m."
							height = gets.chomp.to_f
							result = mass / (height ** 2)
							puts "Your BMI is #{result}" 
						when "i"
							puts "You have selected imperial. \nPlease enter your mass in lb."
							mass = gets.chomp.to_f
							puts "Please enter your height in in."
							height = gets.chomp.to_f
							result = (mass / (height ** 2)) * 703
							puts "Your BMI is #{result}"
						else
							invalid
					end
				when "t"
					puts "You have selected trip calculator. \nPlease enter the distance you are travelling in miles."
					distance = gets.chomp.to_f
					puts "Please enter your vehicles fuel efficiency in miles per gallon."
					mpg = gets.chomp.to_f
					puts "Please enter the current estimated cost per gallon for fuel."
					cpg = gets.chomp.to_f
					puts "Please enter you average expected speed in miles per hour."
					speed = gets.chomp.to_f
					if speed > 60
						mpg -= (speed - 60) * 2
					end
					if mpg < 0
						mpg = 1
					end
					time = distance / speed
					cost = (distance / mpg) * cpg
					puts "Your journey will take approximately #{time} hours, and will cost approximately £#{cost}."
				else
					invalid
			end
		else
			invalid
	end
	puts "Would you like to continue? Press y to continue using the Calculator."
	continue = gets.chomp.downcase
	repeat = false if continue != "y"
end