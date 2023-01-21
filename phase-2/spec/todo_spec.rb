require "todo"

describe Todo do
  context "initially" do
    it "returns the task" do
      todo = Todo.new("Go to shop")
      expect(todo.task).to eq "Go to shop"
    end

    describe "#done?" do
      it "returns false" do
        todo = Todo.new("Go to shop")
        expect(todo.done?).to be false
      end
    end
  end

  context "given the task has been marked done" do
    describe "#done?" do
      it "returns true" do
        todo = Todo.new("Go to shop")
        todo.mark_done!
        expect(todo.done?).to be true
      end
    end
  end
end
