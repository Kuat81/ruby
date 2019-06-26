puts "Day"
day = gets.chomp.to_i
puts "Month"
mon = gets.chomp.to_s
puts "Year"
year = gets.chomp.to_i
days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

if year % 4 == 0 && year % 400 == 0 && yaer % 100 != 0
  days [1] == 29
end
 if mon == 1
   result  = days
 end
soma = days[0..11].sum
res = soma - day
 puts res
