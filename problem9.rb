def triplet() 
  (1..995).each {|i|
    ((i+1)..996).each {|j|
      ((j+1)..997).each {|k|
        return i,j,k if i + j + k == 1000 && i**2 + j**2 == k**2
      }
    }
  }
end

p triplet().inject(1){|product, i| product * i }