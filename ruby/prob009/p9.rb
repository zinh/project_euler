(1..1000).each do |a|
  (a..1000).each do |b|
    (b..1000).each do |c|
      if ((a*a + b*b) == c*c) && ((a + b + c) == 1000)
        puts a*b*c
        raise "Stop"
      end
    end
  end
end
