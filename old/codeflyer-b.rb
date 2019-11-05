a, b, _ = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp

x.each_char do |c|
  case c
  when "S" then
    a -= 1 if a != 0
  when "C" then
    b -= 1 if b != 0
  when "E" then
    next if a == 0 && b == 0

    if a >= b then
      a -= 1
    else
      b -= 1
    end
  end
end

puts a, b