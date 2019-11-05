N = gets.chomp.to_i

list = (2..55555).to_a
primes = []

n = list.first
while list.first < Math.sqrt(55555) do
  n = list.first
  primes << n
  list.select! do |v|
    v % n != 0
  end
end

primes.concat(list)

primes.select! do |v|
  v % 5 == 1
end

puts "#{primes.take(N).join(" ")}"