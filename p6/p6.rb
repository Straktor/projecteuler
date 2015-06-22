#!/usr/bin/ruby

number = 100

# Sum of the first n natural numbers 
# sum_n = n(n+1)/2
def sumNumbers(n)
	return (n * (n + 1) / 2)
end

# Sum of squares of the first n natural numbers 
# sum^2_n = n(n+1)(2n+1)/6
def sumSquaredNumbers(n)
	return ((n * (n + 1) * (2 * n + 1)) / 6)
end

sum = sumNumbers(number)
squared = sumSquaredNumbers(number)

puts (sum * sum - squared).to_s
