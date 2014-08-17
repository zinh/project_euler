require 'rational'

num = (1..20).inject(1){|result, n| result.lcm n}
puts num
