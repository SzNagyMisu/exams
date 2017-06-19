class Exam < DatabaseRecord

  COLUMN_NAMES = %w(year number)

  has_many :exercises
  has_many :student_exams


  def self.hardest
    all.min_by(&:score_by_students)
  end


  def title
    "#{year} / #{number}"
  end

  def max_score
    Exercise::MAX_SCORE * exercises.count
  end

  def score_by_students
    student_exams.inject(0) { |memo, student_exam| memo + student_exam.score }
  end

end
