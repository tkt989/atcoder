r1, c1 = gets.chomp.split(" ").map(&:to_i)
r2, c2 = gets.chomp.split(" ").map(&:to_i)

ps = []

(-2..2).each do |y|
  (-2..2).each do |x|
    ps << [x+r1, y+c1]
  end
end
ps << [r1-3, c1]
ps << [r1+3, c1]
ps << [r1, c1-3]
ps << [r1, c1+3]

rc = [r2 + c2, r2 - c2]

if r1 == r2 && c1 == c2 then
  puts 0
  exit
end

if rc.include?(r1 + c1) || rc.include?(r1 - c1) then
  puts 1
  exit
end

ps.each do |p|
  if r2 == p[0] && c2 == p[1] then
    puts 1
    exit
  end
  if rc.include?(p[0] + p[1]) || rc.include?(p[0] - p[1]) then
    puts 2
    exit
  end

  (-2..2).each do |y|
    (-2..2).each do |x|
      if r2 == p[0] + x && c2 == p[1] + y then
        puts 2
      end
    end
  end
end

# ps.each do |p|
#   (-2..2).each do |y|
#     (-2..2).each do |x|
#       if r2 == p[0] + x && c2 == p[1] + y then
#         puts 2
#       end
#     end
#   end
# end



rc1 = (r1 + c1).even?
rc2 = (r2 + c2).even?

if rc1 ^ rc2 then
  puts 3
  exit
end

puts 2