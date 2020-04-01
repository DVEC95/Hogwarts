require("pry-byebug")

require_relative("./models/student.rb")
require_relative("./models/house.rb")

Student.delete_all()
House.delete_all()


#HOUSE DATA ---------
house1 = House.new({
  "name" => "Gryffindor",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/b/b1/Gryffindor_ClearBG.png/revision/latest?cb=20190222162949"
  })
house1.save()

house2 = House.new({
  "name" => "Slytherin",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png/revision/latest?cb=20161020182557"
  })
house2.save()

house3 = House.new({
  "name" => "Ravenclaw",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/4/4e/RavenclawCrest.png/revision/latest?cb=20161020182442"
  })
house3.save()

house4 = House.new({
  "name" => "Hufflepuff",
  "logo" => "https://vignette.wikia.nocookie.net/harrypotter/images/0/06/Hufflepuff_ClearBG.png/revision/latest?cb=20161020182518"
  })
house4.save()


#STUDENT DATA --------
student1 = Student.new({
  "house_id" => house1.id,
  "first_name" => "Harry",
  "last_name" => "Potter",
  "age" => 16
  })
student1.save()

student2 = Student.new({
  "first_name" => "Ron",
  "last_name" => "Weasley",
  "house_id" => house1.id,
  "age" => 16
  })
student2.save()

student3 = Student.new({
  "first_name" => "Hermione",
  "last_name" => "Granger",
  "house_id" => house1.id,
  "age" => 17
  })
student3.save()

student4 = Student.new({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house_id" => house2.id,
  "age" => 16
  })
student4.save()

student5 = Student.new({
  "first_name" => "Luna",
  "last_name" => "Lovegood",
  "house_id" => house3.id,
  "age" => 15
  })
student5.save()

student6 = Student.new({
  "first_name" => "Newton",
  "last_name" => "Scamander",
  "house_id" => house4.id,
  "age" => 99
  })
student6.save()


binding.pry
nil
