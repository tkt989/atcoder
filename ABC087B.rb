def gets_i()
  return gets.chomp.to_i
end

def gets_list()
  return gets.chomp.split(" ")
end

def gets_list()
  return gets_list().map(&:to_i)
end

A = gets_i
B = gets_i
C = gets_i
X = gets_i

array = []
(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      array << [a, b, c]
    end
  end
end

cnt = 0
puts (array.count do |v|
  a, b, c = v
  500 * a + 100 * b + 50 * c == X
end)