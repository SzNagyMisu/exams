class Student < DatabaseRecord

  COLUMN_NAMES = %w(name initials)
  DATA_TYPE = :csv

  has_many :student_exams
  has_many :student_exercises

end
