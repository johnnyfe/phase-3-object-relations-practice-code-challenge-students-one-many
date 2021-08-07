class Cohort < ActiveRecord::Base
   has_many :students

   def add_student(name:, age:, email:)
    new_cohort = Cohort.find_by(id: self.id)
    cohort_id = new_cohort.id 
    new_student = Student.create(name: name, age: age, email:email, cohort_id: cohort_id)
  end

  def average_age
    self.students.average(:age).to_i
  end

  def total_students
    self.students.count
  end

  def self.biggest
    Cohort.joins(:students).group('cohort_id').order('COUNT(cohort_id) DESC').limit(1)
  end

  def self.sort_by_mod
    self.order('current_mod')
  end

end