N = gets.to_i
ba = []
N.times do
  a, b = gets.split.map(&:to_i)
  ba << [b, a]
end
ba.sort!
sum = 0
ba.each do |bai|
  sum += bai[1]
  if sum > bai[0]
    puts 'No'
    exit
  end
end
puts 'Yes'
