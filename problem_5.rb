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
    if arr.size == 0
      p num
      break
    else
      num += 20
    end
    arr.clear
  end
end


smallest_multiple(2..20)