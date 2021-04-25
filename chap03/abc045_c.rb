s = gets.chomp.chars
ans = 0
['', '+'].repeated_permutation(s.size - 1) do |ope|
  t = s.zip(ope).join
  ans += eval(t)
end
puts ans
