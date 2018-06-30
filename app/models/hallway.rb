class Student
  attr_accessor :name, :time, :current_classroom

  @@out_of_class = []
  def initialize(name, current_classroom, time=Time.now)
    @name = name
    @current_classroom = current_classroom
    @time = time.strftime('%r')
    @@out_of_class << name
  end

  #creates an instance of a student every time they leave class and records time.
  #shovels student's name into array of ALL students out of class.

  def self.in_hallway
    @@out_of_class
  end
  #class method to print class variable of all students in the hallway.

end

student1 = Student.new("Reenie", "115")
puts student1.time
puts student1.current_classroom
puts Student.in_hallway
