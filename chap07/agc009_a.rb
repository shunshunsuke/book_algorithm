N = gets.to_i
A = []
B = []
N.times do |i|
  A[i], B[i] = gets.split.map(&:to_i)
end

ans = 0
(N - 1).downto(0) do |i|
  A[i] += ans
  amari = A[i] % B[i]
  D = 0
  D = B[i] - amari unless amari.zero?
  ans += D
end
puts ans
