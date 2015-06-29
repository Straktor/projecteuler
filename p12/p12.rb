#!/usr/bin/ruby

# Get a triangle number: n * ( n + 1 ) / 2

def getTriangleNumberValue(n)
	return n * ( n + 1 ) /  2
end

# Brute force
# (There is a better way to do it using Prime Factorisation)
def getNumberDivisor(n)
	divisors = 0
	sqrt = Math.sqrt(n)
	
	for i in 1...sqrt
		if n % i == 0
			divisors += 2
		end
	end
	
	# Correction if the number is a perfect square
	if sqrt * sqrt == n
		divisors -= 1
	end

	return divisors	
end

notFound = true
i = 1

while notFound
	triangleNumberValue = getTriangleNumberValue(i)
	
	if getNumberDivisor(triangleNumberValue) > 500
		notFound = false
	end
	i += 1
end

puts triNumberSum

