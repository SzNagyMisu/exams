class Exercise < DatabaseRecord

  COLUMN_NAMES = %w(exam_id number task)
  DATA_TYPE = :json
  MAX_SCORE = 10

  belongs_to :exam
  has_many :student_exercises


  def self.easiest # todo what if there are more?
    all.map do |exercise|
      [exercise,
      exercise.student_exercises.inject(0) { |memo, student_exercise| memo + student_exercise.score }]
    end.max_by(&:last).first
  end

  def title
    "#{exam.title} / #{number}"
  end

end
