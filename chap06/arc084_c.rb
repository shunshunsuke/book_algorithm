N = gets.to_i
A = gets.split.map(&:to_i).sort
B = gets.split.map(&:to_i).sort
C = gets.split.map(&:to_i).sort

ans = 0
# B[i]を固定してい考える
B.each do |b|
  next if b < A[0]
  break if b >= C[-1]
  Ai = b > A[-1] ? N : A.bsearch_index { |a| a >= b }
  Ci = N - C.bsearch_index { |c| c > b }
  ans += Ai * Ci
end
puts ans
