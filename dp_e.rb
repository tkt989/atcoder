N, W = gets.chomp.split(" ").map(&:to_i)
wv = Array.new(N) { gets.split.map(&:to_i) }

v_max = 100 * 10 ** 3

weight = Array.new(N+1).map{Array.new(v_max+1, Float::INFINITY)}

weight[0][0] = 0

N.times do |n|
    i = n + 1
    wi, vi = wv[n]
    (v_max+1).times do |v|

        if v - vi >= 0 then
            weight[i][v] = [weight[i - 1][v], weight[i - 1][v - vi] + wi].min
        else
            weight[i][v] = weight[i - 1][v]
        end
    end
end

max = 0
weight[N].each_with_index do |num, index|
    max = index if num <= W
end

puts max