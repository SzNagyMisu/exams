class Exercise < DatabaseRecord

  COLUMN_NAMES = %w(exam_id number task)
  MAX_SCORE = 10

  belongs_to :exam
  has_many :student_exercises

end