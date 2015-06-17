#!/usr/bin/ruby

a = 0
n = 2520
d = 11

while d <= 20
	a = n
	while n % d != 0
		n += a
	end
	d += 1
end

puts n
