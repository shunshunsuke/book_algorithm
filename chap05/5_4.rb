N, K, W = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

dp = Array.new(N + 1) { Array.new(W + 1, false) }
dp[0][0] = 0
N.times do |i|
  (0..W).each do |w|
    next unless dp[i][w]
    dp[i + 1][w] = dp[i][w]
    dp[i + 1][w + a[i]] = dp[i][w] + 1 if w + a[i] <= W
  end
end
if dp[N][W] <= K
  puts 'YES'
else
  puts 'NO'
end
