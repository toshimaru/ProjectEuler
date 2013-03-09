require 'Prime'
p Prime.each(2_000_000).inject{|sum, i| sum + i}