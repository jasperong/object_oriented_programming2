class Person
  attr_accessor :name

  def initialize
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object."
  end
end

chris = Instructor.new
chris.name = "Chris"
puts chris.greeting

cristina = Student.new
cristina.name = "Cristina"
puts cristina.greeting

chris.teach
cristina.learn

# won't work since teach method is not defined in student class
cristina.teach
