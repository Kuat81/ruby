alfa = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I',
  'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'V', 'X', 'Y', 'Z']
vowels = ['A', 'E', 'I', 'O', 'O', 'Y']

h = Hash[]
alfa.each.with_index(1) do |char, index|
  vowels.each do |v_char|
    if char == v_char
      h[char] = index
      puts index
    end
  end
end


puts h
