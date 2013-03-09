#!/usr/bin/env ruby

def palindrome?(n)
  s = n.to_s()
  return s === s.reverse()
end

def solve
  a = (900..999)
  b = (900..999)
  max = 0
  a.each{|x|
    b.each{|y|
      num = x * y
      if palindrome?(num)
        max =  num > max ? num : max
      end
    }
  }
  return max
end

p solve()

=begin
906609
[Finished in 0.0s]
=end
