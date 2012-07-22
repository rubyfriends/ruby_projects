
require 'date'

class PersonalChef

	def countdown(counter)
		while counter > 0 
			puts "The counter is #{counter}"
			counter = counter - 1
		end
		return self
	end
	
	def water_status(minutes)
		if minutes < 7
			puts "The water is not boiling yet."
		elsif minutes == 7
			puts "It's just barely boiling"
		elsif minutes == 8
			puts "It's boiling!"
		else
			puts "Hot! Hot! Hot!"
		end
		return self
	end

	def inventory
		produce = {"apples" => 3, "oranges" => 1, "carrots" => 12}
		produce.each do |item, quantity|
			puts "There are #{quantity} #{item} in the fridge."
		end
	end

	def make_toast(color)
		puts "Get your own #{color} toast!"
		return self
	end

	def make_eggs(quantity)
		quantity.times do
			puts "Making you #{quantity} green eggs!"
		end
		puts "I'm done!"
		return self
	end

	def make_milkshake(flavor)
		puts "Your liver and #{flavor} milkshake is ready"
		return self
	end

	def good_morning
		today=Date.today.strftime("%A")
		day_of_year=Date.today.yday
		puts "Happy #{today}, it is the #{day_of_year} day of 2012"
	end
end

class Butler
	def open_front_door
		puts "You rang?"
	end

	def open_door(location)
		puts "The #{location} door is now open"
	end
end


