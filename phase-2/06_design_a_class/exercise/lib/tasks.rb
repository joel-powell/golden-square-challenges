class Tasks
  def initialize
    @tasks = []
  end

  def list
    @tasks
  end

  def add(task)
    raise "Task cannot be empty" if task.empty?

    raise "Task already exists" if @tasks.include?(task)

    @tasks << task
  end

  def complete(task)
    raise "Task does not exist" unless @tasks.include?(task)

    @tasks.delete(task)
  end
end
