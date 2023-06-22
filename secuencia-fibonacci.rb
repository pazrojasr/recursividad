def fibs(n)
  secuencia = [0, 1]

  (n - 2).times do
    secuencia << secuencia[-2] + secuencia[-1]
  end

  secuencia
end

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2

  secuencia = fibs_rec(n - 1)
  secuencia << secuencia[-2] + secuencia[-1]
end
