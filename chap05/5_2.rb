N, W = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

dp = Array.new(N + 1) { Array.new(W + 1, false) }
dp[0][0] = true
N.times do |i|
  (W + 1).times do |j|
    next unless dp[i][j]
    # 選ばなかった場合
    dp[i + 1][j] = true
    # 選んだ場合
    dp[i + 1][j + a[i]] = true if j + a[i] <= W
  end
end
puts dp[N][W]
