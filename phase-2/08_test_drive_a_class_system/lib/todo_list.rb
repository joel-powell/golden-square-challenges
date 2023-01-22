class TodoList
  def initialize
    @todos = []
  end

  def add(todo)
    @todos << todo
  end

  def incomplete
    @todos.reject(&:done?)
  end

  def complete
    @todos.select(&:done?)
  end

  def give_up!
    @todos.each(&:mark_done!)
  end
end
