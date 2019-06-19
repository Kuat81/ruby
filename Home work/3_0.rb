puts "first value"
a = gets.chomp.to_f

puts "second value"
b = gets.chomp.to_f

puts "third value"
c = gets.chomp.to_f

dec = (b ** 2) - 4 * a * c

if dec > 0

  x1 = (- b + Math.sqrt(dec) / 2 * a)
  x2 = (- b - Math.sqrt(dec) / 2 * a)

  puts "#{x1.to_s}, #{x2.to_s}"
elsif dec == 0
  x = (- b + Math.sqrt(dec) / 2 * a)
  puts "#{x1.to_s}"
else
  puts "not now!"
end
