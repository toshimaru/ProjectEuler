num = 1
(2..100).each { |i|
  num *= i
}
puts num.to_s().split('').inject { |test, i| test.to_i() + i.to_i() }