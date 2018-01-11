# Matthew Serna
# CSC 600.02
# Sphere Program
# 12/6/2017

class Sphere

	@@pi = 3.14

	def initialize(radius)
		@radius = radius
	end

	def radius
		@radius
	end

	def area
		return 4 * @radius**2 * @@pi
	end

	def volume
		return (4 * @radius**3 * @@pi) / 3
	end

end

class Ball < Sphere

	def initialize(radius, color)
		super(radius)
		@color = color
	end

	def color
		@color
	end

end

class MyBall < Ball

	def initialize(radius, color, owner)
		super(radius, color)
		@owner = owner
	end

	def owner
		@owner
	end

	def show
		puts "#@owner's Ball: Radius = #@radius, Color = #@color, Owner = #@owner"
	end

end

matts_Ball = MyBall.new(2, "Orange", "Matthew").show
her_Ball = MyBall.new(10, "White", "Mary").show
his_Ball = MyBall.new(100, "Red", "Joseph").show
their_Ball = MyBall.new(200, "Blue", "Jesus").show
