N, W = gets.chomp.split(" ").map(&:to_i)

ws = [0]
vs = [0]

N.times do
    w, v = gets.chomp.split(" ").map(&:to_i)
    ws << w
    vs << v
end

value = []

(N+1).times do
    value << [-10 ** 18] * (W + 1)
end

value[0][0] = 0

(1..N).each do |i|
    (0..W).each do |w|
        value[i][w] = [value[i][w], value[i-1][w]].max

        if w - ws[i] >= 0 then
            value[i][w] = [value[i][w], value[i-1][w-ws[i]] + vs[i]].max
        end
    end
end

p value
ans = value[N].max
puts ans

a = [[1,2,3,4,5], [6, 7, 8, 9, 10]]
p a[0][-1]