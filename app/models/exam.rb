class Exam < DatabaseRecord

  COLUMN_NAMES = %w(year number)

  has_many :exercises
  has_many :student_exams


  def self.hardest
    all.map do |exam|
      [exam,
       exam.student_exams.inject(0) { |memo, student_exam| memo + student_exam.score }]
    end.min_by(&:last).first
  end

  def title
    "#{year} / #{number}"
  end

  def max_score
    Exercise::MAX_SCORE * exercises.count
  end

end
