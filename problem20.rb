num = 1
(2..100).each { |i|
  num *= i
}
puts num.to_s().split('').inject { |sum, i| sum.to_i() + i.to_i() }
