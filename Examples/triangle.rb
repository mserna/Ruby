# Matthew Serna
# CSC 600.02
# Triangle Program
# 12/6/2017

class Triangle

	attr_reader :sideA, :sideB, :sideC
    
    def initialize(a, b, c)
        @sideA = a 
        @sideB = b
        @sideC = c
    end

	def perimeter
		return @sideA + @sideB + @sideC
	end

	#Heron's formula
	def area
		p = self.perimeter/2
        return Math.sqrt(p*(p-@sideA)*(p-@sideB)*(p-@sideC)) 
	end

	def typeOfTriangle
		
		if @sideA.to_i != 0 && @sideB.to_i != 0 && @sideC.to_i != 0
			##Tests for Equilateral
			if @sideA.to_i == @sideB.to_i && @sideA.to_i == @sideC.to_i
				return "Equilateral"
			end

			##Tests for Isosceles
			if (@sideA == @sideB && @sideA != @sideC) || (@sideB == @sideC && @sideA != @sideC) || (@sideA == @sideC && @sideB != @sideC)
				return "Isosceles"
			end

			##Tests for Right
			if @sideA**2 == @sideB**2 + @sideC**2 || @sideB**2 == @sideA**2 + @sideC**2 || @sideC**2 == @sideB**2 + @sideA**2
				return "Right"
			end

			##Tests for Scalene
			if @sideA != @sideB && @sideA != @sideC && @sideB != @sideC
				return "Scalene"
			end

		else "Not a triangle"

		end
	end
end


#### Manual Testing Class #####
#### Comment out Manual Testing when Unit Testing ####

# triangle1 = Triangle.new(4,4,4)
# puts "Triangle 1: Side A = #{triangle1.sideA}, Side B = #{triangle1.sideB}, Side C = #{triangle1.sideC}, Type: #{triangle1.typeOfTraingle}"
# puts "Perimeter: #{triangle1.perimeter}, Area: #{triangle1.area}"

# triangle2 = Triangle.new(10,2,10)
# puts "Triangle 2: Side A = #{triangle2.sideA}, Side B = #{triangle2.sideB}, Side C = #{triangle2.sideC}, Type: #{triangle2.typeOfTraingle}"
# puts "Perimeter: #{triangle2.perimeter}, Area: #{triangle2.area}"

# triangle3 = Triangle.new(1,2,3)
# puts "Triangle 3: Side A = #{triangle3.sideA}, Side B = #{triangle3.sideB}, Side C = #{triangle3.sideC}, Type: #{triangle3.typeOfTraingle}"
# puts "Perimeter: #{triangle3.perimeter}, Area: #{triangle3.area}"

# triangle4 = Triangle.new(3,4,5)
# puts "Triangle4 : Side A = #{triangle4.sideA}, Side B = #{triangle4.sideB}, Side C = #{triangle4.sideC}, Type: #{triangle4.typeOfTraingle}"
# puts "Perimeter: #{triangle4.perimeter}, Area: #{triangle4.area}"

# triangle5 = Triangle.new(0,0,0)
# puts "Triangle 5: Side A = #{triangle5.sideA}, Side B = #{triangle5.sideB}, Side C = #{triangle5.sideC}, Type: #{triangle5.typeOfTraingle}"
# puts "Perimeter: #{triangle5.perimeter}, Area: #{triangle5.area}"