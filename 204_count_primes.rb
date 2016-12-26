def count_primes(n)
  is_primes = n.times.map{true}
  is_primes[0] = false
  is_primes[1] = false if n>=1
  n.times.each do |ind|
    break if ind*2>n
    next  if !is_primes[ind]

    up = 2
    while ind*up<=n
      is_primes[ind*up] = false
      up+=1
    end

  end

  is_primes.count(true)
end

p count_primes(2)