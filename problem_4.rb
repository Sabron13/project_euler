def largest_palindrome_product(i)
  placeholder = ''
  i.times { placeholder += '9' }
  x = placeholder.to_i
  y = placeholder.to_i
  palindromes = []

  (x..(0.1 * 10**i)).each do |i|
    (y..(0.1 * 10**i)).each do |j|
      product = i * j
      palindromes << product if palindrome?(product)
      p palindromes
    end
  end

end


def palindrome?(num)
  string_num = num.to_s
  if string_num.length.even?
    front = string_num[0..(string_num.length/2 - 1)]
    back = string_num[string_num.length/2..-1]
  else
    front = string_num[0..(string_num.length.floor/2)]
    back = string_num[string_num.length/2..-1]
  end
  front == back.reverse ? true : false
end

largest_palindrome_product(3)
