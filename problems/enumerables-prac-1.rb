class Student
  attr_reader :name, :id

  def initialize(name, id)
    @name = name
    @id = id
  end

student_1 = Student.new('Megan', 4)
student_2 = Student.new('Brian', 9)
student_3 = Student.new('Sal', 1)
student_4 = Student.new('Mike', 2)
student_5 = Student.new('Amy', 5)

modules = {
  mod_1: [student_1, student_2, student_3],
  mod_2: [],
  mod_3: [student_4],
  mod_4: [student_5]
}

# create an array of all mods that have more than 1 student
mods_popular = []
modules.each do |mod|
  mods_popular << mod[0] if mod[1].length > 1
end
# puts mods_popular

# create a hash that associate a mod with an array of student names
students_in_mod = {}

modules.each do |mod, students|
  students_in_mod[mod] = []
  students.each do |student|
    students_in_mod[mod] << student.name
  end
end
# puts students_in_mod

#create a hash that associates a mod with a student of the highest id
  highest_ids = {}
  highest = 1
  modules.each do |mod, students|
    highest_ids[mod] = []
    students.each do |student|
      if student.id > highest
        highest = student
      highest_ids[mod] = highest.name
      highest = 1
      end
  end 




end

puts highest_ids
end
