require 'prime'
sum = Prime.each(2_000_000).reduce(:+)
puts sum
