N, M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

# 区間[j, i)の平均値を前処理で求める
f = Array.new(N + 1) { Array.new(N + 1) }
(1..N).each do |i|
  i.times do |j|
    f[j][i] = a[j..(i - 1)].sum / (i - j)
  end
end

dp = Array.new(N + 1) { Array.new(M + 1, 0) }
dp[0][0] = 0
(0..N).each do |i|
  i.times do |j|
    (1..M).each do |k|
      dp[i][k] = [dp[i][k], dp[j][k - 1] + f[j][i]].max
    end
  end
end
ans = 0
(0..M).each do |m|
  ans = [ans, dp[N][m]].max
end
puts ans
