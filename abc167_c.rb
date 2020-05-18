N, M, X = gets.chomp.split(" ").map(&:to_i)
C = []
A = []

N.times do
  c, *a = gets.chomp.split(" ").map(&:to_i)
  C << c
  A << a
end

SUC = []

def rec(i, s, c)
  if s.all? {|n| n >= X } then
    SUC << c
    return
  end
  return if i == N
  rec(i + 1, s, c)
  rec(i + 1, s.zip(A[i]).map {|a,b| a+b}, c + C[i])
end

rec(0, [0] * M, 0)

if SUC.size == 0 then
  puts "-1"
  return
end
puts SUC.min