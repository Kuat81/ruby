print "Day: "
day = gets.chomp.to_i
print "Month: "
mon = gets.chomp.to_i
print "Year: "
year = gets.chomp.to_i

days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
days[1] = 29 if year % 400 == 0 || ( year % 4 ==0 && year % 100 != 0)

index = days[0...(mon-1)].sum + day

puts "Resultat: #{index}"
