K, S = gets.split.map(&:to_i)
ans = 0
m = [K, S].min + 1

m.times do |x|
  m.times do |y|
    z = S - x - y
    ans += 1 if z >= 0 && z <= K
  end
end
puts ans
