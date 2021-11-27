M, L = gets.chomp.split(" ").map(&:to_i)
X = gets.chomp.split(" ").map(&:to_i)
T1, T2, T3 = gets.chomp.split(" ").map(&:to_i)

# ハードルがある座標においてtrueとなるような配列
H = [false] * (L + 1)
X.each do |x|
    H[x] = true
end

# cost[i]: 座標iで行動を終了するまでの最小所要時間
# 非常に大きな値で初期化しておき min を用いて更新する
cost = [10 ** 100] * (L + 1)

# 初期条件
cost[0] = 0

# 順番に求めていく
(1..L).each do |i|
    # 行動1
    p i, cost
    cost[i] = [cost[i], cost[i - 1] + T1].min

    # 行動2
    if i >= 2 then
        cost [i] = [cost[i], cost[i - 2] + T1 + T2].min
    end

    # 行動3
    if i >= 4 then
        cost[i] = [cost[i], cost[i - 4] + T1 + 3 * T2].min
    end

    # もしハードルがあれば加算
    if H[i] then
        cost[i] += T3
    end
end

# 答えは座標Lにぴったり止まるか、座標L-3〜L−１からジャンプ中にゴールしたもの
ans = cost[L]
[L-3, L-2, L-1].each do |i|
    if i >= 0 then
        ans = [ans, cost[i] + T1/2 + T2 * (2 * (L - i)/2)].min
    end
end

puts ans