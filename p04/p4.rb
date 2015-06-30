#!/usr/bin/ruby

stopper = 1
a = 999
b = 999
largestPalindrome = 0;

def isPalindromic(n)
	n = n.to_s

	if n == n.reverse
		return true;
	end

	return false;
end

while a > stopper
	b = 999
	while b > stopper
		currentProduct = a*b
		if isPalindromic(currentProduct)
			stopper = b
			if currentProduct > largestPalindrome
				largestPalindrome = currentProduct
			end
		end
		b -= 1
	end
	a -= 1
end

puts largestPalindrome
