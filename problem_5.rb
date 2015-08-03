def smallest_multiple(range)
  num = 2520
  arr = []
  while arr.size != 20
    range.each do |i|
      num % i == 0 ? arr << true : num += 1
    end
    arr = [] if arr.size != 20
  end
  p num
end


smallest_multiple(2..20)