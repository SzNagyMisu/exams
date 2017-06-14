class StudentExercise < DatabaseRecord

  COLUMN_NAMES = %w(student_id exercise_id solution score)

  belongs_to :student
  belongs_to :exercise

end
