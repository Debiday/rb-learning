class Student
    attr_reader :name, :id
  
    def initialize(name ,id)
      @name = name
      @id = id
    end
  end
  
  student_1 = Student.new("Megan", 4)
  student_2 = Student.new("Brian", 9)
  student_3 = Student.new("Sal", 1)
  student_4 = Student.new("Mike", 2)
  student_5 = Student.new("Amy", 5)
  
  students = [student_1, student_2, student_3, student_4, student_5]

#create an array of all student names
all_names = []
students.each do |student|
  all_names << student.name
end
# puts all_names

#create an array of all students who names start with M
initial_m = []
students.each do |student|
    if student.name[0] == "M"
      initial_m << student.name
    end
end
# puts initial_m

#get the student whose id is 1
result = students.find { |student| student.id == 1 }
# puts result.name

#check if one student is named "Amy"
result = students.find { |student| student.name == "Amy"}
# puts result.name

#check if any of the students have an id of 10
check_id = students.find { |student| student.id == 10 } ? true : false
# puts check_id

#find the student with the highest id
highest_id = 0
students.each do |student|
    if student.id > highest_id
        highest_id = student.id
    end
end
# puts highest_id

#create an array with the students in order of name, alphabetically
# puts all_names.sort

#create an array with the students in order of name by length
puts all_names.sort_by { |name| name.length }