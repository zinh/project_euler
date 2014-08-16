require 'pp'

def parse_file(file_name)
  result = []
  File.open(file_name).each do |line|
    row = []
    line.split(" ").each{|num| row.push(num.to_i)}
    result.push(row)
  end
  return result
end

def find_product(arr)
  product = 0
  arr.each_with_index do |row, y|
    row.each_with_index do |item, x|
      adjacents = calculate_direction(x, y)
      adjacents.each do |adj|
        p = item
        adj.each{|a| p *= arr[a.first][a.last]}
        if product < p
          product = p
          pp adj
          puts product
          pp item 
        end
      end
    end
  end
  return product
end

def calculate_direction(x, y)
  result = []
  a = [-1,0,1]
  b = [-1,0,1]
  a.each do |x_add|
    b.each do |y_add|
      next if x_add == y_add && y_add == 0
      tmp = []
      x_tmp = x
      y_tmp = y
      3.times do 
        x_tmp += x_add
        y_tmp += y_add
        tmp.push([x_tmp, y_tmp]) if inside_array?(x_tmp, y_tmp)
      end
      result.push(tmp) if tmp.length == 3
    end
  end
  return result
end

def inside_array?(x, y)
  x >= 0 && y >= 0 && x < 20 && y < 20
end
# pp calculate_direction(0,0)
arr = parse_file("input.txt")
# puts arr.first.length
puts find_product(arr)
