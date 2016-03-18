require 'pp'
require 'pry'

def path_sum(file_name)
  matrix = []
  begin
    File.open(file_name, 'r').each_line do |line|
      matrix << line.split(' ')
    end
  rescue Errno::ENOENT
    return nil
  end
  matrix.map!{|row| row.map!{|item| item.to_i}}
  max_sum = 0
  total_path = 0
  all_path(matrix.length - 1, [[[0,0]]]).each do |path|
    sum = 0
    path.each do |point|
      x = point.first
      y = point.last
      if x < 0 || y < 0
        sum = 0
        break
      end
      if matrix[x].nil? || matrix[x][y].nil?
        sum = 0
        break
      end
      sum += matrix[x][y]
    end
    total_path += 1 if sum > 0
    if max_sum < sum
      max_sum = sum 
    end
  end
  puts total_path
  return max_sum
end

def all_path(max_x, current_path)
  max_x.times do
    new_path = []
    current_path.each do |path|
      last_point = path.last
      x = last_point.first
      y = last_point.last
      new_path << (path + [[x + 1, y]])
      new_path << (path + [[x + 1, y + 1]]) if (y + 1) <= (x + 1)
      new_path << (path + [[x + 1, y - 1]]) if (y - 1) >= 0
    end
    current_path = new_path
  end
  return current_path
end

# puts path_sum('input.txt')

pp all_path(3, [[[0,0]]])
