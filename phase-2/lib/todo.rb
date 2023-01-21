class Todo
  def initialize(task)
    @task = task
    @done = false
  end

  attr_reader :task

  def mark_done!
    @done = true
  end

  def done?
    @done
  end
end
