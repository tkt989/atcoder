N = gets.chomp.to_i

red = []
N.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  red << {x: x, y: y}
end

blue = []
N.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  blue << {x: x, y: y}
end

def recur(red, r_idx, blue, result)
  return result if r_idx >= red.size

  r = red[r_idx]
  candidates = blue.select {|b| b[:x] >= r[:x] and b[:y] >= r[:y]}

  list = [0]
  candidates.each do |b|
    t = blue.clone
    t.delete(b)
    list << recur(red, r_idx + 1, t, result + 1)
  end
  result + list.max
end

red.permutation(red.size) do |z|
  puts recur(z, 0, blue, 0)
end