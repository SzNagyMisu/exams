assert 'should create exam' do
  count_before = Exam.count
  Exam.create
  Exam.count == count_before + 1
end

assert 'should delete exam' do
  count_before = Exam.count
  Exam.last.delete
  Exam.count == count_before - 1
end

assert 'should get id on creation' do
  new_exam = Exam.new
  new_exam.save
  !new_exam.id.nil?
end

assert 'should increment id when creating exam' do
  last_id = Exam.last.id
  Exam.create
  Exam.last.id > last_id
end

assert 'table_name should be "exams"' do
  Exam.table_name == 'exams'
end

assert 'should write into db/tables/test/exams.*' do
  Exam.create
  File.mtime("db/tables/test/exams.#{DatabaseManager::TYPE_EXTENSIONS[Exam::DATA_TYPE]}").to_i == Time.now.to_i
end

assert 'should get exercises' do
  Exam.first.exercises.map(&:id) == Exercise.where(exam_id: Exam.first.id).map(&:id)
end

assert 'should get student_exams' do
  Exam.first.student_exams.map(&:id) == StudentExam.where(exam_id: Exam.first.id).map(&:id)
end

assert 'should format title properly' do
  Exam.new(year: 2017, number: 3).title == '2017 / 3'
end
