x1, y1, x2, y2 = gets.chomp.split(" ").map(&:to_i)

theta = (Math.atan2(y2-y1, x2-1) * 180 / Math::PI).floor
a = 180 - 90 - theta
b = 90 - theta
x = 180 - a - b - theta

p theta
p x