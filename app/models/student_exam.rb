class StudentExam < DatabaseRecord

  COLUMN_NAMES = %w(student_id exam_id) # todo note?

  belongs_to :student
  belongs_to :exam

end