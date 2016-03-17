# For example:
# 3  2  9
# 4  7  16
# 11 13 15
def grid_product(file_name, n)
  matrix = []
  begin
    File.open(file_name, 'r').each_line do |line|
      matrix << line.split(' ')
    end
  rescue Errno::ENOENT
    return nil
  end

  return nil if matrix.nil?

  matrix.map!{|row| row.map!{|item| item.to_i}}

  products = []
  matrix.each_with_index do |row, x|
    row.each_with_index do |num, y|
      max_product = 0
      adjacents(x, y, n).each do |adjacent|
        product = 1
        adjacent.each do |axis|
          x_1 = axis.first
          y_1 = axis.last
          next if x_1 < 0 || y_1 < 0
          next if matrix[x_1].nil? || matrix[x_1][y_1].nil?
          product *= matrix[x_1][y_1]
        end
        max_product = product if product > max_product
      end
      products << max_product
    end
  end
  return products.max
end

def adjacents(x, y, n)
  result = [[],[],[],[],[],[],[],[]]
  n.times do |time|
    calculated = [[x + time,y],
                  [x, y + time],
                  [x - time, y],
                  [x, y - time],
                  [x - time, y - time],
                  [x + time, y + time],
                  [x - time, y + time],
                  [x + time, y - time]]
    result.map!.with_index do |direction, index|
      direction << calculated[index]
    end
  end
  return result
end

puts grid_product('input.txt', 4)
