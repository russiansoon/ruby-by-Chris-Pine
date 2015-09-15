# Объектная модель Ruby. http://7vn.ru/blog/2011/11/18/object-model/

class Parent
	def some_method
		'Parent#some_method'
	end
end

class Child < Parent
end

obj = Child.new
puts obj.some_method

puts '--------------------------------'

module MyFirstModule
	def first_module_method
		'MyFirstModule#first_module_method'
	end
	def first2_module_method
		'My2#first_module_method2'
	end
end

module MySecondModule
	def second_module_method
		'MySecondModule#second_module_method'
	end
end

class Myclass
	include MyFirstModule
	include MySecondModule

	def method_from_class
		'Myclass#method_from_class'
	end
end

obj = Myclass.new
puts obj.first_module_method
puts obj.second_module_method
puts obj.method_from_class
puts obj.first2_module_method