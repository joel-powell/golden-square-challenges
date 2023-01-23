require "todo_list"
require "todo"

describe "integration" do
  context "given multiple added todos" do
    before(:each) do
      @todo_list = TodoList.new
      tasks = ["Go to shop", "Empty bins", "Clean house"]
      @todos = tasks.map { |task| Todo.new(task) }
      @todos.each { |todo| @todo_list.add(todo) }
    end

    context "initially" do
      describe "#incomplete" do
        it "returns all todos" do
          expect(@todo_list.incomplete).to eq @todos
        end
      end

      describe "#complete" do
        it "returns an empty array" do
          expect(@todo_list.complete).to eq []
        end
      end
    end

    context "given up" do
      describe "#incomplete" do
        it "returns an empty array" do
          @todo_list.give_up!
          expect(@todo_list.incomplete).to eq []
        end
      end

      describe "#complete" do
        it "returns all todos" do
          @todo_list.give_up!
          expect(@todo_list.complete).to eq @todos
        end
      end
    end
  end
end
