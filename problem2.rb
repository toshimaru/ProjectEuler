def fibo(n)
    a, b = 1, 2
    while a < n do
        yield a
        a, b = b, a + b 
    end
end

sum = 0
fibo(4000000) {|f| 
    if f % 2 == 0
        sum += f
    end
}

puts "answer: " + sum.to_s

=begin
sum = 2
a = 1
b = 2
c = 0
while c < 4000000
    c = a + b
    a = b
    b = c
    if c % 2 == 0
        sum += c
    end
end
puts 'answer:' + sum.to_s
=end
