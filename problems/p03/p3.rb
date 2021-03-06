#!/usr/bin/ruby

# http://math.stackexchange.com/questions/389675/largest-prime-factor-of-600851475143
# Detailed Algorithm description:
#
# You can do this by keeping three variables:
#
# The number you are trying to factor (A)
# A current divisor store (B)
# A largest divisor store (C)
# Initially, let (A) be the number you are interested in - in this case, it is 600851475143. Then let (B) be 2. Have a conditional that checks if (A) is divisible by (B). If it is divisible, divide (A) by (B), reset (B) to 2, and go back to checking if (A) is divisible by (B). Else, if (A) is not divisible by (B), increment (B) by +1 and then check if (A) is divisible by (B). Run the loop until (A) is 1. The (3) you return will be the largest prime divisor of 600851475143.
#
# There are numerous ways you could make this more effective - instead of incrementing to the next integer, you could increment to the next necessarily prime integer, and instead of keeping a largest divisor store, you could just return the current number when its only divisor is itself. However, the algorithm I described above will run in seconds regardless.

number = 600851475143;

def findLargestPrimeFactor(n)
	factor = 1;
	currentFactor = 2;

	if n > 1
		while currentFactor < n/2
			if n % currentFactor == 0
				n = n / currentFactor
				factor = findLargestPrimeFactor(n)
				if currentFactor > factor
					factor = currentFactor
				end

				return factor;
			end
			currentFactor += 1;
		end

		# n is a prime number
		if n > factor
			factor = n			
		end

	end
	return factor;
end

largestPrimeFactor = findLargestPrimeFactor(number)
puts largestPrimeFactor;





