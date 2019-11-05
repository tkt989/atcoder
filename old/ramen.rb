S = gets.chomp

a, b, c = S.split("").map {|v| v == "o" ? 100 : 0 }

puts  700 + a + b + c