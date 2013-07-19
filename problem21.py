'''
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
Evaluate the sum of all the amicable numbers under 10000.
'''

import math
from datetime import datetime

start = datetime.now()

def sOD(x):
	s = 1
	for i in range(2, int(math.sqrt(x)) + 1):
		if (x % i == 0):
			s += i
			s += x / i
	return s

def findSum():
	sum = 0
	for i in range(1, 10000):
		x = sOD(i)
		if (sOD(x) == i):
			if (i != x):
				sum += i
	return sum

print findSum()

end = datetime.now()
print end - start

'''
def amicable (x):
	aminum = 1
	for i in range(2,x/2+1):
		if x % i == 0:
			aminum += i
	return aminum

nums = []
aminums = []

# prepare array
for i in range(2, 10001):
	nums.append(i)

# Main Loop
for i in nums:
	aminum1 = amicable(i)
	
	if aminum1 != 1 and i != aminum1:
		aminum2 = amicable(aminum1)
		if i == aminum2:
			print 'aminum!'
			if aminum1 in nums:
				nums.remove(aminum1)
			if aminum2 in nums:	
				nums.remove(aminum2)
			aminums.append(aminum1)
			aminums.append(aminum2)

print 'answer'
print sum(aminums)
'''
