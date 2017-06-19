class StudentExam < DatabaseRecord

  COLUMN_NAMES = %w(student_id exam_id note)

  belongs_to :student
  belongs_to :exam


  def student_exercises
    StudentExercise.where(student_id: student_id, exercise_id: exam.exercises.map(&:id))
  end

  def score
    student_exercises.inject(0) { |memo, student_exercise| memo + student_exercise.score }
  end

  def percent
    score / exam.max_score * 100
  end

end
