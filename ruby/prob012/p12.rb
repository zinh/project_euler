require 'pp' 

def tri_num(n)
  sum = 0
  (1..n).each{|k| sum += k}
  return sum
end

def num_divisor(n)
  sum = 0
  limit = Math::sqrt(n).to_i
  (1..limit).each do |k|
    if (n % k).zero?
      sum += 1 
      sum += 1 if (n / k) != k
    end
  end
  return sum
end

def calc(limit)
  max_div = 0
  k = 0
  while max_div <= limit
    k += 1
    n = tri_num(k)
    max_div = num_divisor(n)
    pp k, max_div
  end
  return tri_num(k)
end

# puts num_divisor(21)
puts calc(500)
