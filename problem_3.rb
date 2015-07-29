require 'prime'

def largest_prime(dividend)
  square_root = Math.sqrt(dividend).floor
  largest_prime_factor = []
  
  square_root.downto(2).each do |num|
    largest_prime_factor << num if dividend % num == 0 && num.prime?
  end
  
  p largest_prime_factor[0]
end

largest_prime(600851475143)


# 600851475143