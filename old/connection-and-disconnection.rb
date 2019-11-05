S = gets.chomp
K = gets.chomp.to_i

grouped = (S.split("").inject([]) do |memo, item|
  memo << [] if memo.last == nil
  if memo.last.last == nil || memo.last.last == item then
    memo.last << item
    next memo
  end

  memo << [item]
  next memo
end)

if grouped.size == 1 then
  if grouped.first.size == 1 then
    puts (K / 2.0).floor
    exit
  end

  puts (grouped.first.size * K / 2.0).floor
  exit
end

same = false
lastt = false
if grouped.first[0] == grouped.last[0] then
  grouped.first.concat(grouped.last)
  same = true if (grouped.first.size % 2 == 0) && grouped.last.size == 1
  last = true if (grouped.last.size != 1 && grouped.last.size % 2 != 0)
  grouped.pop
end

total = 0

grouped.each do |list|
  total += (list.size / 2.0).floor
end

# if grouped.first[0] == grouped.last[0] && grouped.last.size == 1 then
#   total += 1
#   same = true
# end

answer = total * K
answer -= 1 if same
answer -= 1 if last

puts answer