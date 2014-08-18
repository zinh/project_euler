n0 = 1
n1 = 1
n = n1 + n0
t = 3

while n.to_s.length < 1000
  n0 = n1
  n1 = n
  n = n1 + n0
  t += 1
end
puts t
