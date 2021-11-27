N = gets.chomp.to_i
P = gets.chomp.split(" ").map(&:to_i)

p_sum = P.sum
# dp[i][p]: i問目までの問題から得点pを作れるか
dp = Array.new(N+1).map{Array.new(p_sum+1, false)}

# 0問目で0点は作れる
dp[0][0] = true

# dp[i-1][p] || dp[i-1][p-p[i]]

N.times do |n|
    i = n + 1
    (p_sum+1).times do |p|
        dp[i][p] = dp[i-1][p] || dp[i-1][p-P[n]]
    end
end

puts dp[N].count{|b| b}