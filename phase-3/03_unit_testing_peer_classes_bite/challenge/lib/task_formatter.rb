class TaskFormatter
  def initialize(task)
    @task = task
  end

  def format
    check = @task.complete? ? "x" : " "
    "- [#{check}] #{@task.title}"
  end
end
