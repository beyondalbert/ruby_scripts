array_test = Array.new(10) { rand(0.0..10000.0) }
p array_test

# 冒泡排序法

def bubble_srot(array)
	for i in 0..(array.length - 1)
		for j in 0..(list.length - i - 2)
			array[j], array[j + 1] = array[j + 1], array[j] if array[j] > array[j + 1]
		end
	end
	array
end

p bubble_srot(array_test)
