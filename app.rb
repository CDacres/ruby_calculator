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
			puts "You've selected advanced mode. \nPlease select which calculation to perform: \nFor Powers, please enter p. \nFor Square Root, please enter sq. \nFor BMI Calculator, please enter bmi."
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
					puts "You have selected BMI. \nTo use metric measurements, please enter m. \nTo use imperial measurements, please enter i."
					units = gets.chomp.downcase
					case units
						when "m"
							puts "You have selected metric. \nPlease enter your mass in kg."
							number1 = gets.chomp.to_f
							puts "Please enter your height in m."
							number2 = gets.chomp.to_f
							result = number1 / (number2 ** 2)
							puts "Your BMI is #{result}" 
						when "i"
							puts "You have selected imperial. \nPlease enter your mass in lb."
							number1 = gets.chomp.to_f
							puts "Please enter your height in in."
							number2 = gets.chomp.to_f
							result = (number1 / (number2 ** 2)) * 703
							puts "Your BMI is #{result}"
						else
							invalid
					end
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