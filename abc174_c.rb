K = gets.chomp.to_i

n = K % 10

if [2, 4, 5, 6, 8].include?(n) then
  puts "-1"
  exit
end