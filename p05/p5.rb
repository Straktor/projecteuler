#!/usr/bin/ruby

increment = 1
number = 1
divider = 1
numberOfDivider = 20

while divider <= numberOfDivider
	increment = number
	while number % divider != 0
		number += increment
	end
	divider += 1
end

puts number
