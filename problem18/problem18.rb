array = []
File.open(ARGV.first) do |f|
	f.each_line.with_index do |line, index|
		array << line.delete("\n").split(" ").collect(&:to_i)
	end
end
array.reverse!
array[1..array.size-1].each.with_index do |a, a_i|
	p "a_i=#{a_i}"
	a.each.with_index do |b, b_i|
		p "b_i=#{b_i}"
		max = array[a_i][b_i] > array[a_i][b_i+1] ? array[a_i][b_i] : array[a_i][b_i+1]
		p array[a_i+1][b_i]
		array[a_i+1][b_i] += max
		p array[a_i+1][b_i]
	end
end
