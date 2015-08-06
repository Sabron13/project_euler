def largest_palindrome_product(int)
  placeholder = ''
  int.times { placeholder += '9' }
  x = placeholder.to_i
  y = placeholder.to_i
  palindromes = []

  x.downto(0.1 * 10**int).each do |i|
    y.downto(0.1 * 10**int).each do |j|
      product = i * j
      palindromes << product if palindrome?(product)
    end
  end
  palindromes.sort.pop
  
end


def palindrome?(num)
  string_num = num.to_s
  string_num == string_num.reverse
end

largest_palindrome_product(3)
