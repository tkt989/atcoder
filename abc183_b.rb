Sx, Sy, Gx, Gy = gets.chomp.split(" ").map(&:to_i)

a = (-Gy.to_f - Sy) / (Gx - Sx)
puts -Sy / a + Sx