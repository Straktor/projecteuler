#!/usr/bin/ruby

sum = 1000
found = false

# Brute force
for a in 1..sum
	for b in 1..sum
		c = sum - a - b
		
		if (a*a + b*b) == (c*c)
			found = true
			break	
		end
	end

	if found
		break	
	end
end

puts "a: " + a.to_s + " b: " + b.to_s + " c: " + c.to_s + " product: " + (a*b*c).to_s
