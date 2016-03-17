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
  all_path(matrix.length, [[[0,0]]]).each do |path|
    sum = 0
    path.each do |point|
      x = point.first
      y = point.last
      break if x < 0 || y < 0
      break if matrix[x].nil? || matrix[x][y].blank?
      sum += matrix[x][y]
    end
    max_sum = sum if max_sum < sum
  end
  return max_sum
end

def all_path(max_x, current_path)
  break_point = false
  new_path = []
  current_path.each do |path|
    axis = path.last
    x = axis.first
    y = axis.last
    new_path << (path + [[x + 1, y]])
    new_path << (path + [[x + 1, y + 1]])
    new_path << (path + [[x + 1, y - 1]])
    break_point = true if (x + 1) == max_x
  end
  if break_point
    return new_path
  else
    all_path(max_x, new_path)
  end
end

path_sum('input.txt')
