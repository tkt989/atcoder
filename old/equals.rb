N, M = gets.chomp.split(" ").map(&:to_i)
p = gets.chomp.split(" ").map(&:to_i)

pairs = []
M.times do
  pairs << gets.chomp.split(" ").map(&:to_i)
end

def path(pairs, index, goal, visited, n)
  puts "#{pairs}, #{index}, #{goal}, #{visited}, #{n}"
  return true if index == goal

  filtered = pairs.select { |pair|
    pindex = pairs.index(pair)
    visited[pindex] == false and ((pair[0] > n and pair[0] == index) or (pair[1] > n and pair[1] == index))
  }

  filtered.each do |pair|
    v = visited.clone
    v[pairs.index(pair)] = true
    nextindex = pair[0] == index ? pair[1] : pair[0]
    if path(pairs, nextindex, goal, v, n) == true then
      return true
    end
  end
  return false
end

N.each do |n|
  index = p.index(n) + 1
  visited = []
  N.times {visited << false}
  if path(pairs, index, n, visited, n) then
    p[n-1], p[index-1] = p[index-1], p[n-1]
  end
  puts "#{p}"
end