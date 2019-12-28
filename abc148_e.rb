N = gets.chomp.to_i

if N <= 9 || N % 2 != 0 then
  puts "0"
  exit
end

n = N
n -= n.to_s.chars.last.to_i

result = 0
18.downto(1).each do |e|
  v = 10 ** e
  d = (n / v.to_f).floor

  if d >= 5 then
    p "pass, #{result}, #{v}"
    result += Math.log10(v).floor
  end
  if e >= 2 then
    result += (Math.log10(v).floor) * d
  else
    result += Math.log10(v).floor * d
  end
  # n = N.to_s.reverse[0..e-1].reverse.to_i
end

p result

def f(n)
  result = 1
  while true
    if n < 2 then
      break
    end
    result *= n
    n -= 2
  end
  result
end

def count_zero(s)
  reverse = s.reverse
  i = 0
  while i < reverse.size
    if reverse[i] != "0" then
      break
    end
    i += 1
  end
  i
end