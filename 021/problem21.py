import math
from datetime import datetime

start = datetime.now()


def sOD(x):
    s = 1
    for i in range(2, int(math.sqrt(x)) + 1):
        if (x % i == 0):
            s += i
            s += x / i
        if math.sqrt(x) == i:
            s -= i
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
