N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

# 「すべての間隔を x 以上にして M 個の小屋を選べるか？」という判定問題を解く
# Yes であるような最大の x を求める
left = 0
right = a[N - 1] + 1
while right - left > 1
  x = (left + right) / 2
  # 何個の小屋が取れたか (最初の小屋は選ぶ)
  cnt = 1
  # 前回の小屋の index
  prev = 0
  N.times do |i|
    # x 以上の間隔が空いたら採用する
    if a[i] - a[prev] >= x
      prev = i
      cnt += 1
    end
  end
  # 判定問題が Yes か No か
  if cnt >= M
    left = x
  else
    right = x
  end
end
puts left
