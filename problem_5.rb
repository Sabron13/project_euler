def smallest_multiple(range)
  num = range.to_a[-1]
  range_size = range.to_a.size
  arr = []
  while num < 240000000
    range.each do |i|
      num % i == 0 ? arr << 0 : break
    end
    if arr.size == range_size
      p num
      break
    else
      num += 20
    end
    arr.clear
  end
end


smallest_multiple(2..20)