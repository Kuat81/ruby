

class Array

def square
self.each {|n| return 'Error string' if n.class == String}
self.map {|n| n**2}
end

def average
  self.each {|n| return 'Error string' if n.class == String}
  self.sum / self.size
end

def even_odd
self.each {|n| return 'Error string' if n.class == String}
even_1 = self.select{|i| i.even?}.size
odd_1 = self.select{|i| i.odd?}.size
difference = even_1 - odd_1
end

def reverse_stringß
self.each {|n| return 'Error numeric' if n.class == Integer}
self.map {|str| str.reverse}
end

end
