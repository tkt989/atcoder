N = gets.chomp.to_i

(1..9).each do |n|
  if N % n == 0 && (N / n) <= 9 then
    puts "Yes"
    exit
  end
end

puts "No"