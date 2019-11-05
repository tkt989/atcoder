require "prime"

N = gets.chomp.to_i

p N.prime_division.map {|a| a[0] ** a[1]}