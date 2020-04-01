require_relative("../db/sqlrunner.rb")

class Student

  attr_accessor :first_name, :last_name, :house, :age
  attr_reader :id

  def initialize(student)
    @first_name = student['first_name']
    @last_name = student['last_name']
    @house = student['house']
    @age = student['age']
    @id = student['id'].to_i if student['id']
  end

end
