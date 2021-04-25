N = gets().to_i
A = gets().split.map(&:to_i)

def how_many_times(n)
  exp = 0
  while(n % 2 == 0)
    n /= 2
    exp += 1
  end
  exp
end

A.map! { |x| how_many_times(x) }
puts A.min
