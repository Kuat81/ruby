n = '1 2 3 4 5 6 7 8 9'

def min_max (numbers)
  dig = []
  array = numbers.split
  array.each {|n| dig << n.to_i}
dig.sort
puts "#{dig[0]} #{dig[-1]}"
end

min_max(n)
