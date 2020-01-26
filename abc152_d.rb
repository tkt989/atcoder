N = gets.chomp.to_i

def calc(first, last, digit, limit)
  cnt = 0

  if digit == 0 then
    cnt += 1 if (first + last).to_i <= limit
    return cnt
  end

  list = []
  fixed = []

  digit.downto(1).each do |n|
    pass = false
    9.downto(0).each do |d|
      v = first.clone
      v.concat(fixed.join)
      v.concat(d.to_s)
      v.concat("0" * (n - 1))
      v.concat(last)
      if v.to_i <= limit then
        list << (d + 1)
        fixed << d
        pass = true
        break
      end
    end
    if !pass then
      fixed << 0
    end
  end
  total = list.inject(:*)
  cnt + if total == nil then 0 else total end
end

cnt = 0
n = 1
while n <= N do
  first = n.to_s.chars.first
  last = n.to_s.chars.last

  if first == "0" || last == "0" then
    n += 1
    next
  end

  if first == last && first.to_i <= N then
    cnt += 1
  end

  digit = 0
  while true do
    total = calc(last, first, digit, N)
    break if total == 0
    cnt += total
    digit += 1
  end
  n += 1
end

p cnt

p calc("1", "1", 1, 25)