require("pry-byebug")

require_relative("./models/student.rb")
require_relative("./models/house.rb")

Student.delete_all()
House.delete_all()

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

#HOUSE DATA ---------
house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/b/b1/Gryffindor_ClearBG.png/revision/latest?cb=20190222162949",
  })
house1.save()

house2 = House.new({
  "name" => "Slytherin",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png/revision/latest?cb=20161020182557",
  })
house2.save()

house3 = House.new({
  "name" => "Ravenclaw",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/4/4e/RavenclawCrest.png/revision/latest?cb=20161020182442",
  })
house3.save()

house4 = House.new({
  "name" => "Hufflepuff",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/0/06/Hufflepuff_ClearBG.png/revision/latest?cb=20161020182518",
  })
house4.save()

binding.pry
nil
