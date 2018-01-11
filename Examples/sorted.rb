# Matthew Serna
# CSC 600.02  
# Sorted? and Limited? Array Program
# 12/6/2017  

def sorted?(x)
	0.upto(x.length - 2) \
	{ |index|
		if x[index] > x[index + 1] then
			print "0 - Array not sorted"
			return 0
		end
	}
	print "+1 - Array sorted in increasing order"
	return 1
end

def limited?(amin,amax)
	puts "Array minimum = #{amin}"
	puts "Array maximumm = #{amax}"
end

def show(array)
	print "[ "
	array.length.times \
	{ |index|
		print array[index]
		print ", " if index < array.length - 1
	}
	print " ]"
end

array = [2,3,3,4,1,2,3,1,2,3,4]
sorted?(array)
puts
show(array)
puts
array.sort!
sorted?(array)
puts
show(array)
puts
array.reverse!
puts "-1 - Array sorted in decreasing order"
show(array)
puts
limited?(array.min,array.max)