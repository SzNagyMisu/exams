include DownloadHelper

set views: "#{settings.root}/app/views"

get '/' do
  @task = {
      easiest_exercise: Exercise.easiest.title,
      hardest_exam: Exam.hardest.title,
      best_student: Student.best.name
  }

  erb :index
end

get '/download_csv' do
  status 200
  headers 'Content-Disposition' => 'attachment; filename="download.csv"',
          'Content-Type' => 'text/plain'
  body Parsers::CsvParser.convert(task_csv_data)
end
