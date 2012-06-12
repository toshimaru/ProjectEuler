sum = 0
for i in 1..999
	if i % 3 == 0 then
		sum += i
	elsif i % 5 == 0 then
		sum += i
	end
end
puts "answer:" + sum.to_s
