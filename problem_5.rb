def smallest_multiple(range)
  num = 2520
  arr = []
  while num < 240000000
    range.each do |i|
      if num % i == 0
        next
      else
        arr << i
      end
    end
    arr = [] if arr.size != 20
  end
  p num
end


smallest_multiple(2..20)