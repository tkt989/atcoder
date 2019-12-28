N = gets.chomp.to_i
S, T = gets.chomp.split(" ")

puts S.chars.zip(T.chars).inject("") { |s, a| s + a[0] + a[1] }