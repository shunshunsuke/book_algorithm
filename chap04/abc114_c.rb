N = gets.to_i
@ans = 0

def func(t, seven, five, three)
  return if t.join.to_i > N && !t.empty?
  @ans += 1 if seven && five && three
  func(t + [7], true, five, three)
  func(t + [5], seven, true, three)
  func(t + [3], seven, five, true)
end

func([], false, false, false)
puts @ans
