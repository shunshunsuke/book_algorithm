N, M = gets.split.map(&:to_i)
s, t = gets.split.map(&:to_i)
G = Array.new(N) { [] }
M.times do
  a, b = gets.split.map(&:to_i)
  G[a] << b
end

seen = Array.new(N, false)
queue = []
seen[s] = true
queue.push(s)

until queue.empty?
  v = queue.shift
  G[v].each do |x|
    next if seen[x]
    seen[x] = true
    queue.push(x)
  end
end
puts seen[t] ? 'Yes' : 'No'
