A, B, C = gets.split.map(&:to_i)
left = 0.0
right = 100.0
100.times do
  mid = (left + right) / 2
  f = A * mid + B * Math.sin(C * mid * Math::PI)
  f > 100 ? right = mid : left = mid
end
puts left
