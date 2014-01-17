begin_time = Time.now

num = 0
prime = 3
flag = false
primes = []

while num < 10000
	sqrt = Math.sqrt(prime).to_i
	# p sqrt
	(2 .. sqrt).each do |i|
		if prime % i == 0
			flag = true
			break
		end
	end
	if !flag
		num += 1
		primes << prime
	end
	prime += 1
	flag = false
end

p prime-1
p Time.now - begin_time
