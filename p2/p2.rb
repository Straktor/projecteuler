#!/usr/bin/ruby

maxFibNum = 4000000
evenNumberTotal = 0
n1 = 0
n2 = 1
fib = 0

while fib <= maxFibNum
	fib = n1 + n2
	n1 = n2
	n2 = fib
	if fib % 2 == 0
		evenNumberTotal += fib
	end
end

puts 'Total: ' + evenNumberTotal.to_s
