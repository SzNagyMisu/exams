class Student < DatabaseRecord

  COLUMN_NAMES = %w(name initials)

  has_many :student_exams
  has_many :student_exercises

end
