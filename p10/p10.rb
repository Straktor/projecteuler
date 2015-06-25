#!/usr/bin/ruby

# My implementation of Sieve of Eratosthenes algoritm
factor = [2]
n = 3
sum = 2 # 1 is not a prime number

while n < 2000000
	skip = false
	limit = Math.sqrt(n).ceil

	for i in 0...factor.size
		if factor[i] > limit 
			break
		elsif  n % factor[i] == 0 
			skip = true
			break
		end
	end

	if !skip
		factor.push(n)
		sum += n
	end
	n += 1
end

puts sum
