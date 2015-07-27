# Classes, Objects and Modules

class Shape
end

class Square < Shape
	def initialize(side_length)
		# Class Instance variable
		@side_length = side_length
	end

	def area
		@side_length * @side_length
	end

	def perimeter
		@side_length * 4
	end


	"""
	#Class variable
	def initialize
		if defined?(@@number_of_squares)
			@@number_of_squares += 1
		else 
			@@number_of_squares = 1
		end
	end
	"""

	# Class method
	def self.test_method
		puts "Hello from the Square class!"
	end

	# Object method
	def test_method
		puts "Hello from an instance of class Square!"
	end
end



class Triangle < Shape
	def initialize(base_width, height, side1, side2, side3)
		@base_width = base_width
		@height = height
		@side1 = side1
		@side2 = side2
		@side3 = side3
	end

	def area
		@base_width * @height / 2
	end

	def perimeter
		@side1 + @side2 + @side3
	end
end

#puts area_of_Triangle(6,6)
# => puts perimeter_of_square.(5)

my_square = Square.new(5)
my_triangle = Triangle.new(6, 6, 7.81, 7.81, 7.81)
puts my_square.area
puts my_square.perimeter
puts my_triangle.area
puts my_triangle.perimeter

a = Square.new(10)
b = Square.new(5)
puts a.area
puts b.area

# calling a Class method
Square.test_method

# calling an Object method
b.test_method

"""
# Counting the number of instances created for the Square class
a = Square.new
puts Square.count 
b = Square.new
puts Square.connt 
c = Square.new
puts Square.count 
"""


