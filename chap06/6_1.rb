N = gets.to_i
a = gets.split.map(&:to_i)
sorted = a.sort
ans = []
a.each do |ai|
  ans << sorted.find_index(ai)
end
pp ans
