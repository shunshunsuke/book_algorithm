s = gets.chomp.chars
t = gets.chomp.chars
n = s.size
m = t.size
dp = Array.new(n + 1) { Array.new(m + 1, 0) }
s.each_with_index do |si, i|
  t.each_with_index do |tj, j|
    dp[i + 1][j + 1] = if si == tj
                         dp[i][j] + 1
                       else
                         dp[i][j + 1] > dp[i + 1][j] ? dp[i][j + 1] : dp[i + 1][j]
    end
  end
end
ans = []
i = n
j = m
while i * j > 0
  if dp[i][j] == dp[i][j - 1]
    j -= 1
  elsif dp[i][j] == dp[i - 1][j]
    i -= 1
  else
    ans << s[i - 1]
    i -= 1
    j -= 1
  end
end
puts ans.join.reverse
