#!/usr/bin/env ruby

beginning_time = Time.now

=begin
# simpler code, but 0.01 seconds 
require 'mathn'
p 600851475143.prime_division.last[0]
=end

def primes(n) 
    max = Math::sqrt(n).truncate
    (2..max).each {|val|
        if n % val == 0 then
            p val
            primes(n/val)
            return
        elsif val == max then
            p n
            return
        end
    }
end

NUM = 600851475143
primes(NUM)

end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)} seconds"
