#!/usr/bin/ruby

# My implementation of Sieve of Eratosthenes algoritm
factor = [2]
n = 3

while factor.size < 10001
	for i in 0...factor.size
		skip = false
		if n % factor[i] == 0 
			skip = true
			break
		end
	end
	if !skip
		factor.push(n)
	end
	n += 1
end

puts factor[factor.size-1]
