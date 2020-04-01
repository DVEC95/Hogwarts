require_relative("../db/sqlrunner.rb")

class Student

  attr_accessor :first_name, :last_name, :age, :house_id
  attr_reader :id

  def initialize(student)
    @first_name = student['first_name']
    @last_name = student['last_name']
    @age = student['age']
    @id = student['id'].to_i if student['id']
    @house_id = student['house_id'].to_i
  end

  def fullname()
    return "#{@first_name} #{@last_name}"
  end

  def save()
    sql = "INSERT INTO students (house_id, first_name, last_name, age)
           VALUES ($1, $2, $3, $4) RETURNING id"
    values = [@house_id, @first_name, @last_name, @age]
    @id = SQLRunner.run(sql, values)[0]['id'].to_i
  end

  def update()
    sql = "UPDATE students SET (house_id, first_name, last_name, age)
           = ($1, $2, $3, $4) WHERE id = $5"
    values = [@house_id, @first_name, @last_name, @age, @id]
    SQLRunner.run(sql, values)[0]['id'].to_i
  end

  def delete()
    sql = "DELETE FROM students"
    SQLRunner.run(sql)
  end

  def self.delete_all()
    sql = "DELETE FROM students"
    SQLRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM students"
    students = SQLRunner.run(sql)
    return students.map {|student| Student.new(student)}
  end

  def self.find(id)
    sql = "SELECT * FROM students WHERE id = $1"
    values = [id]
    student = SQLRunner.run(sql, values).first()
    return nil if student == nil
    return Student.new(student)
  end

  def house()
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [@house_id]
    house = SQLRunner.run(sql, values).first()
    return house['name']
  end

end
