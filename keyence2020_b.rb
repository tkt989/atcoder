N = gets.chomp.to_i

r = []

def calc(r, a, ai)
  x = a[0]
  l = a[1]
  range = (x-l+1..x+l-1)
  result = []
  r.each.with_index do |b,i|
    bx = b[0]
    bl = b[1]
    result << i if range.include?(bx-bl+1) || range.include?(bx+bl-1)
  end
  result.delete(ai)
  result
end

def check(r)
  r.all? do |a|
    a[2].size == 0
  end
end

N.times do
  x, l = gets.chomp.split(" ").map(&:to_i)
  r << [x, l]
end

r.map!.with_index do |a,i|
  a[2] = calc(r, a, i)
  a
end

r.sort! {|a,b| b[2] <=> a[2]}

while !check(r) do
  a = r.first
  a[2].each do |i|
    r[i][2].shift
  end
  r.shift
end

puts r.size