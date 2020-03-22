N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

table = {}
cmemo = {}

$memo = {}

def fact(n)
  return $memo[n] if $memo[n] != nil
  result = if (n <= 1) then 1 else fact(n - 1) * n end
  $memo[n] = result
  $memo[n]
end

def c(n,k)
  return 0 if n < k
  k=n-k if 2*k > n
  return 1 if k == 0
  ((n-k+1)..n).reduce(&:*)/((1..k).reduce(&:*))
end

# def c(n, r)
#   return 0 if n < r
#   (fact(n) / (fact(r) * fact(n - r))).to_i
# end

A.each do |a|
  table[a] = 0 if table[a] == nil
  table[a] += 1
end

total = 0
table.each do |k, v|
  total += c(v, 2)
end

A.each do |a|
  result = total
  result -= c(table[a], 2)
  result += c(table[a]-1, 2)
  puts result
end