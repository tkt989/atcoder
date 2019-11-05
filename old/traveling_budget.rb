A = gets.chomp.to_i
B = gets.chomp.to_i
C = gets.chomp.to_i
D = gets.chomp.to_i

train = [A, B].min
bus = [C, D].min

puts train + bus