class Exam < DatabaseRecord

  COLUMN_NAMES = %w(year number)

  has_many :exercises
  has_many :student_exams

end
