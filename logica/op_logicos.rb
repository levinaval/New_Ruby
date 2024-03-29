a = 2
b = 3
c = 6

def maior(a, b)
  return (a > b)
end

def menor(a, b)
  return (a < b)
end

def comparacao(a, b)
  return (a == b)
end

def diferente(a, b)
  return (a != b)
end

def maior_igual(a,b)
  return (a >= b)
end

def superior(a, b, c)
  return (c >= a + b)
end
puts maior(a, b)
puts menor(a, b)
puts comparacao(a, b)
puts diferente(a, b)
puts maior_igual(a, b)
puts superior(a, b, c)