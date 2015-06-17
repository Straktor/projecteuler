#!/usr/bin/ruby

i = 0
total = 0

for i in 0...1000 
	if (i % 3 == 0 || i % 5 == 0)
		total += i
	end
end

puts 'Total: ' + total.to_s
