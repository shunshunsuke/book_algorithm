require 'set'

N = gets.to_i
p = gets.split.map(&:to_i)
W = 10_000

dp = Array.new(N + 1) { Array.new(W, false) }
dp[0][0] = true
N.times do |i|
  (0..W).each do |w|
    next unless dp[i][w]
    # 選ばない場合
    dp[i + 1][w] = true
    # 選ぶ場合
    dp[i + 1][w + p[i]] = true
  end
end
ans = 0
(0..W).each do |w|
  ans += 1 if dp[N][w]
end
puts ans
