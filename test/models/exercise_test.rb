assert 'should find by id' do
  Exercise.create(id: 1234, task: 'I wanna be found')
  Exercise.find(1234).task == 'I wanna be found'
end

assert 'should get exam' do
  Exercise.first.exam.id == Exercise.first.exam_id
end

assert 'should get student_exercises' do
  Exercise.first.student_exercises.map(&:id) == StudentExercise.where(exercise_id: Exercise.first.id).map(&:id)
end

assert 'should format title properly' do
  Exam.create(id: 1234, year: 2019, number: 1)
  Exercise.new(id: 1235, exam_id: 1234, number: 11).title == '2019 / 1 / 11'
end
