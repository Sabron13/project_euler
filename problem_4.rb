def largest_palindrome_product(i)
  placeholder = ''
  i.times { placeholder += '9' }
  x = placeholder.to_i
  y = placeholder.to_i
  palindromes = []

  999.downto(100).each do |i|
    999.downto(100).each do |j|
      product = i * j
      palindromes << product if palindrome?(product)
    end
  end
  p palindromes.sort.pop
  
end


def palindrome?(num)
  string_num = num.to_s
  string_num == string_num.reverse
end

largest_palindrome_product(3)
