N = gets.chomp.to_i

(1..50000).each do |n|
  if N == (n * 1.08).to_i then
    puts n
    exit
  end
end
puts ":("