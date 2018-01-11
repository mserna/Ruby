# Matthew Serna
# CSC 600.02
# Ruby Demo Program
# 12/6/2017

##LOOPS##
# WHILE
puts("While loop")
x = 10
while x >= 0
	print x, " " 
	x = x - 1 #decrement x
end
puts

# UNTIL
puts("Until loop")
x = 1
until x == 10
	print x, " "
	x = x + 1 #increment x
end
puts

# FOR
puts("For loop")
for i in [2,3,4,5] do 
	print i, " "
end
puts	

##ITERATORS
# UPTO
puts("Upto iterator")
1.upto(10) { |x| print x, " " }
puts

# DOWNTO
puts("Downto iterator")
10.downto(1) { |x| print x, " " }
puts

# TIMES
puts("Times iterator")
5.times do |x|
	print x, " "
end
puts

# EACH
puts("Each iterator")
array = [1,2,3,4,5]
array.each do |x|
	print x, " "
end
puts

# MAP
puts("Map iterator")
[1,2,3].map {|x| print 2 * x, " "} #multiplies array by 2
puts

# STEP
puts("Step iterator")
1.step(10,1) do |x|
	print x, " "
end
puts

# COLLECT
puts("Collect iterator")
array = [1,2,3,4,5]
array2 = Array.new
array2 = array.collect
print array, " "
puts

# SELECT
puts("Select iterator")
array = [1,2,3,4,5,6]
array2 = Array.new
array2 = array.select { |x| x%2 == 0} #select even numbers
print array2, " "
puts

# REJECT
puts("Reject iterator")
array = [1,2,3,4,5,6]
array2 = Array.new
array2 = array.reject { |x| x%2 == 0} #reject even numbers
print array2, " "
puts
