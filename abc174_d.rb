N = gets.chomp.to_i
C = gets.chomp.split("")

$WI = 0
$RI = C.size - 1

def wi()
  for i in $WI...C.size do
    return i if C[i] == "W"
  end
  nil
end

def ri()
  $RI.downto(0) do |i|
    return i if C[i] == "R"
  end
  nil
end

cnt = 0
while true do
  wi = wi()
  ri = ri()

  break if wi == nil || ri == nil
  break if wi >= ri
  C[wi] = "R"
  C[ri] = "W"
  $WI = wi
  $RI = ri
  cnt += 1
end
puts cnt