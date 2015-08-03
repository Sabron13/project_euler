def largest_palindrome_product(i)
  



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
