def gets_i()
  return gets.chomp.to_i
end

def gets_list()
  return gets.chomp.split(" ")
end

def gets_list()
  return gets_list().map(&:to_i)
end