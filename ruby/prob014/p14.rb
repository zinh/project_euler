def next_collatz(n)
  if n.even?
    return n/2
  else
    return 3*n + 1
  end
end

def chain_length(n)
  length = 1
  next_number = n
  while next_number != 1
    length += 1
    next_number = next_collatz(next_number)
  end
  return length
end

def calc(limit)
  max_length = 1
  max_num = 1
  (1..limit).each do |num|
    length = chain_length(num)
    # puts num.to_s + " : " + length.to_s
    if max_length < length
      max_length = length 
      max_num = num
    end
  end
  return max_num
end

t1 = Time.now
puts calc(1_000_000)
puts "Execute time: #{Time.now - t1} sec"
