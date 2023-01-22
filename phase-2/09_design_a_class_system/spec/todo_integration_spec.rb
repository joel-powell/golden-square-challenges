require "todo_list"
require "todo"

describe "integration" do
  context "given multiple todos added" do
    it "returns all todos" do
      todo_list = TodoList.new
      todo_1 = Todo.new("Go to shop")
      todo_2 = Todo.new("Empty bins")
      todo_list.add(todo_1)
      todo_list.add(todo_2)
      expect(todo_list.all).to eq [todo_1, todo_2]
    end
  end
end
