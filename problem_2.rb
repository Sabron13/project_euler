def fib_summer(terminus)
  fib_seq = []
  x, y = 1, 2
  fib_seq << x
  while y <= terminus do
    fib_seq << y
    x, y = y, x+y
  end
  (fib_seq.select { |num| num.even? }).inject(:+)

end

fib_summer(4000000)