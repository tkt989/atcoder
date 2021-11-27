n, w = gets.split.map(&:to_i)
value_max = 10**5 + 1
wv = Array.new(n) { gets.split.map(&:to_i) }
dp = Array.new(n + 1) { Array.new(value_max + 1, Float::INFINITY) }

dp[0][0] = 0
n.times do |i|
  weight, value = wv[i]
  value_max.times do |j|
    if j - value >= 0
      dp[i + 1][j] = [dp[i][j], dp[i][j - value] + weight].min
    else
      dp[i + 1][j] = dp[i][j]
    end
  end
end
p n
p value_max

max = 0
dp[n].each_with_index do |num, index|
  max = index if num <= w
end
puts max