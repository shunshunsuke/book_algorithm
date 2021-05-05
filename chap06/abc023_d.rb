N = gets.to_i
h = []
s = []
N.times do |i|
  h[i], s[i] = gets.split.map(&:to_i)
end
left = 0
right = 1 << 60
while right - left > 1
  mid = (left + right) / 2
  ok = true
  # 風船を割るまでの時間制限
  t = Array.new(N, 0)
  N.times do |i|
    if mid < h[i]
      ok = false
    else
      t[i] = (mid - h[i]) / s[i]
    end
  end
  # 時間が差し迫っている順にソート
  t.sort!
  N.times do |i|
    ok = false if t[i] < i
  end
  if ok
    right = mid
  else
    left = mid
  end
end
puts right
