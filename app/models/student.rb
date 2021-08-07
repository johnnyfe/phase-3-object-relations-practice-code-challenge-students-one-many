class Student < ActiveRecord::Base
  belongs_to :cohort

  def current_mod
    cohort = Cohort.find_by('current_mod')
  end

  def add_student(name:, age:, email:)
    student = Student.create(name: name, age: age, email:email)
    self.students << student
  end
end