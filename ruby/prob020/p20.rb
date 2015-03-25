puts (1..100).reduce(:*).to_s.split("").inject(0){|sum, n| sum += n.to_i}
