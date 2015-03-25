require 'prime'

max_count = 0
max_a = []
(-1000..1000).each do |a|
  puts a
  (-1000..1000).each do |b|
    count = 0
    n = 0
    s = n*n + a*n + b
    while Prime.prime?(s)
      count += 1
      n += 1
      s = n*n + a*n + b
    end
    if count > max_count
      max_count = count
      max_a = [a, b]
    end
  end
end

puts max_a
