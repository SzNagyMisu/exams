module DownloadHelper

  def task_csv_headers
    %w(Év Hányadik_vizsga Vizsgázó_neve Vizsgázó_azonosítója
       1._feladat_szövege 2._feladat_szövege 3._feladat_szövege
       1._feladat_megoldása 2._feladat_megoldása 3._feladat_megoldása
       1._feladatban_elért_pontszám 2._feladatban_elért_pontszám 3._feladatban_elért_pontszám
       Összpontszám Teljesítmény_százalékban Érdemjegy).map { |elem| elem.gsub(/_/, ' ') }
  end

  def task_csv_data
    header = task_csv_headers

    StudentExam.all.sort_by do |student_exam|
      exam = student_exam.exam
      [exam.year, student_exam.student.id, exam.number]
    end.map do |student_exam|
      exam = student_exam.exam
      student = student_exam.student
      exercises = exam.exercises
      student_exercises = student_exam.student_exercises

      header.zip([exam.year, exam.number, student.name, student.initials,
                  exercises.map(&:task), student_exercises.map(&:solution), student_exercises.map(&:score),
                  student_exam.score, student_exam.percent.round, student_exam.note].flatten).to_h
    end
  end

end