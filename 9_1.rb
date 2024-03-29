
items = [{:name=>"Snickers", :code=>"A01", :quantity=>10, :price=>250},

         {:name=>"Pepsi", :code=>"A02", :quantity=>5, :price=>350},

         {:name=>"Orange Juice", :code=>"A03", :quantity=>10, :price=>400},

         {:name=>"Bon Aqua", :code=>"A04", :quantity=>7, :price=>120},

         {:name=>"Bounty", :code=>"A05", :quantity=>10, :price=>270}]

def automate(code, pr, items)
 items.each do |n|
   if n[:code] == code && n[:quantity] == 0
     puts "#{n[:name]}, has ended"
   elsif n[:code] == code && n[:price] == pr
     total = n[:quantity]
     n[:quantity] = total - 1
    puts n[:name]
  elsif n[:code] == code && n[:price] < pr
    puts "#{n[:name]}, cashback = #{pr - n[:price]}"
  elsif n[:code] == code && n[:price] > pr
    puts "insufficient amount, add more #{pr - n[:price]}"
 end
   end
  return items
end

automate("A02", 270, items)
puts items
