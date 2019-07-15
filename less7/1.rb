array = []
def score_throws (arr)
  return 0 if arr.empty?
  a = []
a << 100 if arr.all? {|n| n < 5}
  arr.each do |r|
   rad = r.to_f

   a << 10 if rad < 5
   a << 5 if rad >= 5 && rad <= 10
   a << 0 if rad > 10
end

  puts a.sum
end

loop do
print "Enter value: "
num = gets.chomp.to_f
break if num == 00
array << num
end

score_throws (array)
