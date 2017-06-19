assert 'id should be integer' do # in csv it is stored as a String
  Student.all.all? { |student| student.id.is_a?(Integer) }
end

assert 'should find student_exams' do
  Student.first.student_exams.map(&:to_h) == StudentExam.where(student_id: Student.first.id).map(&:to_h)
end

assert 'should modify attributes' do
  student = Student.new
  student.attributes = {name: 'New Student', initials: 'NS'}
  student.name == 'New Student' && student.initials == 'NS'
end
