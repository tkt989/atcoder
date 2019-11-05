h, w = gets.chomp.split(" ").map(&:to_i)
n, m = gets.chomp.split(" ").map(&:to_i)

paper = []
h.times do
  paper << Array.new(w).fill(".")
end

stamp = []
n.times do
  stamp << gets.chomp.split("")
end

black = []

(0..n-1).each do |y|
  (0..m-1).each do |x|
    next if stamp[y][x] == "."
    black << {
      :top => y, :left => x, :bottom => n-1-y, :right => m-1-x
    }
  end
end

lines = Array.new(h).fill(nil)

black.each do |b|
  top = b[:top]
  left = b[:left]
  right = w - b[:right]

  if lines[top] == nil then
    lines[top] = 
    next
  break
end