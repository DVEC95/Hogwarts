require("sinatra")
require("sinatra/contrib/all") if development?

require_relative("./models/student")
require_relative("./models/house")
also_reload("./models/*")

#INDEX
get "/students" do
  @students = Student.all()
  erb(:index)
end

#NEW
get "/students/new" do
  @students = Student.all()
  @houses = House.all()
  erb(:new)
end

#CREATE
post "/students" do
  new_student = Student.new(params)
  new_student.save()
  erb(:create)
end
