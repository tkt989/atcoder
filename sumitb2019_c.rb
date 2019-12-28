X = gets.chomp.to_i

def func(x)
  if x == 0 then
    puts "1"
    exit
  end
end

(0..X/100).each do |a|
  xa = a == 0 ? X : X - (100 * a)
  func(xa)
  (0..xa/101).each do |b|
    xb = b == 0 ? xa : xa - (101 * b)
    func(xb)
    (0..xb/102).each do |c|
      xc = c == 0 ? xb : xb - (102 * c)
      func(xc)
      (0..xc/103).each do |d|
        xd = d == 0 ? xc : xc - (103 * d)
        func(xd)
        (0..xd/104).each do |e|
          xe = e == 0 ? xd : xd - (104 * e)
          func(xe)
          (0..xe/105).each do |f|
            xf = f == 0 ? xe : xe - (105 * f)
            func(xf)
          end
        end
      end
    end
  end
end

puts "0"