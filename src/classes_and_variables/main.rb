#!/usr/bin/ruby -w

# Global variable
$debug_level = 0

class Person
	# Instance variable
	@name = ""

	# Class variable
	@@number_of_persons = 0

	def initialize(id, name)
		@id = id
		@name = name
	end

	def speak()
		# Local variable (in method) start with a lowercase letter or _
		_temp = "Hi, my name is " + @name
		temp = "Hi, my name is #{@name}"
		puts _temp
		puts temp
	end
end

person1 = Person.new(1, "Mischa")
person2 = Person.new(2, "Luca")
persons = [person1, person2]

persons.each{|_person|
	_person.speak()
	puts _person.class
}