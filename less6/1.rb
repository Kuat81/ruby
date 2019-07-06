def ask(string)
  days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

pust 'Incorrect Request' unless string.class == String

 puts Time.now.strftime("%d/%m") if string == 'time'

 puts Time.now.strftime("%d/%m/%y") if string == 'date'

 puts Time.now.strftime("%A, %d/%m/%y") if string == 'day'

if string == 'remaining days'
  day = Time.now.strftime ("%d")
  mon = Time.now.strftime ("%m")
  yer = Time.now.strftime ("%Y")

  d = day.to_i
  m = mon.to_i
  y = yer.to_i
  days[1] = 29 if y % 400 == 0 || ( y % 4 ==0 && y % 100 != 0)
  puts days.sum - (days[0..(m-1)].sum + d)
end

if string == 'remaining weeks'
  day = Time.now.strftime ("%d")
  mon = Time.now.strftime ("%m")
  yer = Time.now.strftime ("%Y")

  d = day.to_i
  m = mon.to_i
  y = yer.to_i
  days[1] = 29 if y % 400 == 0 || ( y % 4 ==0 && y % 100 != 0)
  puts (days.sum - (days[0..(m-1)].sum + d)) / 7

end

end

ask('remaining weeks')
