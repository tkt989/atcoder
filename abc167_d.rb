N, K = gets.chomp.split(" ").map(&:to_i)
A = gets.chomp.split(" ").map(&:to_i)

history = [0]
visited = {0 => 0}

fix = nil
repeat = []
i = 0
idx = 0
while idx < K do
  i = A[i] - 1

  if visited[i] != nil then
    repeat = history[visited[i]..-1]
    fix = history[0..visited[i]-1]
    break
  end

  idx += 1
  history << i
  visited[i] = idx
end

if idx == K then
  puts history.last + 1
  return
end

k = K - fix.size
puts repeat[k % repeat.size] + 1
