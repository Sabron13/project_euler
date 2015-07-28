def summer
  num_arr = [*1..999].select do |num|
    if num % 3 == 0
      num
    elsif num % 5 ==0
      num
    else
    end

  end
  num_arr.inject(:+)
end
