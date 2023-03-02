def calcDelt(a, b, c)
  @delt = (b*b-4*a*c)
  
end

def calcResult(a, b)
  @x1 = (-b + Math.sqrt(@delt))/(2*a)
  @x2 = (-b + Math.sqrt(@delt))/(2*a)
  to_s
end

def postResult
  
end