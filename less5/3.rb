a = []
loop do

   print "Enter product names: "
   str = gets.chomp.to_s

   print "price: "
   s = gets.chomp.to_f

   a << str
   a << s
   sym = '0'
break if str == sym
  end
hash = Hash[*a]
hash.delete('0')
n = 0
hash.each do|st, pr| n = n + pr
 puts st
end
 puts n
