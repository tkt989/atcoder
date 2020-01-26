H = gets.chomp.to_i
W = gets.chomp.to_i
N = gets.chomp.to_i

if H < W then
  h, w = [W, H]
else
  h, w = [H, W]
end
_h = h
_w = w
n = N

while _w != 0 && n > 0 do
  n -= h
  _w -= 1
end

while _h != 0 && n > 0 do
  n -= w
  _h -= 1
end

puts (h - _h) + (w - _w)