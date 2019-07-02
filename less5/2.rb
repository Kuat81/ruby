st = 'hello', 'my', 'baby', 'i', 'missing', 'you'

def string(str)
st = []
  str.each {|s| st << s.length}
  st.sort!

  puts st [0]
  puts st [-1]
  puts "summ, #{st[0]+st[-1]}"
end

string (st)
