require "todo"

describe Todo do
  context "initially" do
    it "returns the task" do
      todo = Todo.new("Go to shop")
      expect(todo.task).to eq "Go to shop"
    end
  end
end
