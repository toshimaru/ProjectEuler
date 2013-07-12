num = 1

for i in range(1, 101):
    num *= i
    print num

print sum([int(x) for x in str(num)])

# a = raw_input("Press Enter key")
