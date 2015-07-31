def largest_palindrome_product(i)
  placeholder = ''
  i.times { placeholder += '9' }
  
  palindromes = []
  (placeholder.to_i * placeholder.to_i).downto(100001).each do |num|
    palindromes << num if palindrome?(num)
  end
  factors_sum = 0
  largest_palindrome = []
  while largest_palindrome.size < 1 do
    palindromes.each do |num|
      factors = []
      while factors.size < 2 do
        Math.sqrt(num).floor.downto(100).each do |factor|
        factors << factor if num % factor == 0
        end
      end
      factors_sum = factors.inject(:+) if factors.size == 2
    end
  end
  p factors
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
