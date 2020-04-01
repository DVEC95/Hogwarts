require("pry-byebug")

require_relative("./models/student.rb")

Student.delete_all()

#STUDENT DATA --------
student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 16
  })
student1.save()

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house" => "Gryffindor",
  "age" => 16
  })
student2.save()

student3 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house" => "Gryffindor",
  "age" => 17
  })
student3.save()

student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 16
  })
student4.save()

student5 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house" => "Ravenclaw",
  "age" => 15
  })
student5.save()

student6 = Student.new({
  "first_name" => "Newton",
  "last_name" => "Scamander",
  "house" => "Hufflepuff",
  "age" => 99
  })
student6.save()


binding.pry
nil
