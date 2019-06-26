a = [10]
n = a[-1] + 10
a << n
while (n = a[-2] + a[-1]) < 100 do a << n end

puts a 
