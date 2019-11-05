A, B = gets.chomp.split(" ").map(&:to_i)

gcd = A.gcd(B)
puts gcd
puts gcd.gcd(A / gcd)