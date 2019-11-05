S = gets.chomp

array = S.scan(/(<+|>+)/).flatten

number = array.map do |a|
  if a[0] == "<" then
    next (0..a.size).to_a
  end

  next a.size.downto(0).to_a
end

i = 0
result = []
while i < number.size do
  n = number[i]
  if i >= 1 && number[i].size <= number[i-1].size then
    n = n[1..-1]
  end

  if i < number.size - 1 && number[i].size < number[i+1].size then
    n = n[0..-2]
  end
  result << n

  i += 1
end

p result
puts result.flatten.inject(0) {|sum, x| sum + x}

# <>>><<><<<<<>>><

# <  >>>   <<   > <<<<< >>> <
#    3 0  0-2     0 - 5 2-0 

# 0<3>2>1>0<1<2>0<1<2<3<4<5>2>1>0<1

# 0<1>0<1>0