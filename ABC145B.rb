def gets_i()
  return gets.chomp.to_i
end

def gets_list()
  return gets.chomp.split(" ")
end

def gets_list()
  return gets_list().map(&:to_i)
end

N = gets_i
S = gets.chomp

if N % 2 != 0 then
  puts "No"
  exit
end

d = (N / 2)

if S[0..d-1] == S[d..-1] then
  puts "Yes"
else
  puts "No"
end
