class Student < DatabaseRecord

  COLUMN_NAMES = %w(name initials)
  DATA_TYPE = :csv

  has_many :student_exams
  has_many :student_exercises


  def self.best
    all.map do |student|
      [student, student.student_exercises.inject(0) { |memo, exercise| memo + exercise.score }]
    end.max_by(&:last).first
  end

end
