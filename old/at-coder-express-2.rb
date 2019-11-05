n, m, q = gets.chomp.split(" ").map(&:to_i)
lr = []
m.times do
  lr << gets.chomp.split(" ").map(&:to_i)
end
pq = []
q.times do
  pq << gets.chomp.split(" ").map(&:to_i)
end

pq.each do |epq|
  list = []
  lr.each do |elr|
    if epq[0] <= elr[0] && elr[1] <= epq[1] then
      list << elr
    end
    break if epq[1] < elr[0]
  end
  puts list.size
end