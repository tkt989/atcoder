A, B, X = gets.chomp.split(" ").map(&:to_i)

limit = X
def digit(n)
  Math.log10(n).to_i + 1
end

while (limit / 2).ceil != 0 do
  limit = (limit / 2).ceil
  if X > A * limit + B * digit(limit) then
    limit *= 2
    break
  end
end

if (limit / 2).ceil == 0 then
  puts "0"
  exit
end

p limit
limit.downto(1) do |n|
  if X > A * n + B * digit(n) then
    puts A * n + B * digit(n)
    puts n
    exit
  end
end