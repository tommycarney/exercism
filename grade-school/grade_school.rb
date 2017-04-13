class School

  def initialize
   @students, @grades = [], []
  end
  def students(grade)
    @students.select{|student| student.grade == grade }.map{|student| student.name}.sort
  end
  def students_by_grade
    @grades.sort.inject([]) do |array, grade|
       array << Hash[:grade => grade, :students => students(grade)]
    end
  end

  def add(name, grade)
  student = Student.new(name, grade)
  @students << student
  @grades << grade unless @grades.include?(grade)
  end
end

class Student
  attr_reader :name, :grade
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
end

module BookKeeping
  VERSION = 3
end
