require 'pry'

# code here!
class School

	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name,grade)
		if @roster.keys.include?(grade)
			@roster[grade] << name
		else
			@roster[grade] = [].push(name)
		end
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		Hash[@roster.each do |key,value|
			@roster[key] = value.sort
		end.sort]
	end


end