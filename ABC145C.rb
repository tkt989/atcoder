N = gets.chomp.to_i
xs = []
ys = []

N.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  xs << x
  ys << y
end

def distance(x1, y1, x2, y2)
  Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)
end

$d = []
N.times do |i|
  r = []
  N.times do |j|
    r << distance(xs[i], ys[i], xs[j], ys[j])
  end
  $d << r
end

$r = []
def walk(visited, i, deep, r)
  if deep == N - 1 then
    $r << r
    return
  end
  N.times do |index|
    if i == index || visited.include?(index) then
      next
    end
    new_visited = visited.clone
    new_visited << i
    walk(new_visited, index, deep + 1, r + ", #{index+1}")
  end
end

def fact(n)
  return 1 if n == 1
  n * fact(n-1)
end

N.times do |i|
  walk([], i, 0, "#{i+1}")
end

s = 0
$r.each do |r|
  rr = r.split(",").map(&:to_i).map{|n| n-1}
  rr.size.times do |i|
    break if i == N - 1
    s += distance(xs[rr[i]], ys[rr[i]], xs[rr[i+1]], ys[rr[i+1]])
  end
end

puts s / (fact(N))