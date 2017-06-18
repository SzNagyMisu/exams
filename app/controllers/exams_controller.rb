class ExamsController

  def initialize(route)
    @router = route
  end


  def index
    @task = {
        easiest_exercise: get_easiest_exercise,
        hardest_exam: get_hardest_exam,
        best_student: get_best_student
    }

    bind_instance_variables
    @router.erb :index
  end

  def download_csv

  end


  private

  def get_easiest_exercise

  end

  def get_hardest_exam

  end

  def get_best_student

  end

  def bind_instance_variables
    instance_variables.each do |variable|
      @router.instance_variable_set(variable, instance_variable_get(variable))
    end
  end

end