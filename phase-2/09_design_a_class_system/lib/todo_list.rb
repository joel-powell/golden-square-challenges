class TodoList
  def initialize
    @todos = []
  end

  def add(todo)
    @todos << todo
  end

  def all
    @todos
  end
end
