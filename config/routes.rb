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
  'not yet coded'
end
