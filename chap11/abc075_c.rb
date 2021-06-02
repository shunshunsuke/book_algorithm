class UnionFind
  def initialize(n)
    @par = Array.new(n, -1)
    @siz = Array.new(n, 1)
  end

  def root(x)
    if @par[x] == -1
      x
    else
      @par[x] = root(@par[x])
    end
  end

  def same?(x, y)
    root(x) == root(y)
  end

  def unite(x, y)
    x = root(x)
    y = root(y)
    return if x == y
    x, y = y, x if @siz[x] < @siz[y]
    @par[y] = x
    @siz[x] += @siz[y]
  end

  def size(x)
    @siz[root(x)]
  end
end

N, M = gets.split.map(&:to_i)
A = []
B = []
M.times do |i|
  a, b = gets.split.map(&:to_i)
  A[i] = a - 1
  B[i] = b - 1
end
ans = 0
M.times do |i|
  uf = UnionFind.new(N)
  M.times do |j|
    uf.unite(A[j], B[j]) unless i == j
  end
  count = 0
  N.times do |j|
    count += 1 if uf.root(j) == j
  end
  ans += 1 if count > 1
end
puts ans
