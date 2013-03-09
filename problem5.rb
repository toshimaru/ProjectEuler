require 'rational'
num = (1..20).inject(1) { |result, n| result.lcm n }
puts "Smallest evenly divisible number is #{ num }."

# Smallest evenly divisible number is 232792560.
# [Finished in 0.1s]

=begin
def multiple()
  x = 19
  while x < 100_000_000_000
    20.downto(2) {|i|
      break if x % i != 0
      if i == 2
        p x
        return
      end
    }
    x += 19
  end
end
multiple()

# 232792560
# [Finished in 3.7s
=end