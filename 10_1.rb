string = ['New-Y', 'Nbcwvwidmwqcc5234trf', 'Dallas', 'Los-angeles', 'Las_vegas']
number = [7, 8, 3, 9, 1, 0, 4]
str = 0
str1 = 0

h = {}
def perform(find_words)
yield(find_words)
end

def perform(parse_numbers)
yield(parse_numbers)
end

perform(string) do |n| n.each do |s| str = s.length
  if str1 <= str
    str1 = str
  end
 end
end
 puts str1

perform(number){|n| n.each.with_index(1) {|n, index| h[n] = index}}
puts h
