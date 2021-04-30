N = gets.to_i
a = []
N.times do
  a.push(gets.split.map(&:to_i))
end

dp = Array.new(N + 1, 0) { Array.new(3, 0) }
3.times do |i|
  dp[0][i] = 0
end
N.times do |i|
  3.times do |j|
    3.times do |k|
      next if j == k
      dp[i + 1][k] = [dp[i + 1][k], dp[i][j] + a[i][k]].max
    end
  end
end
puts dp[N].max
