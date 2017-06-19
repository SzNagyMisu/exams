class Student < DatabaseRecord

  COLUMN_NAMES = %w(name initials)
  DATA_TYPE = :csv

  has_many :student_exams
  has_many :student_exercises


  def self.best
    all.max_by(&:score_by_exercises)
  end


  def score_by_exercises
    student_exercises.inject(0) { |memo, student_exercise| memo + student_exercise.score }
  end

end
