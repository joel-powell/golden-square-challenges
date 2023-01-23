require "task_formatter"
require "task"

describe "integration" do
  context "given task is not complete" do
    it "returns the task formatted as a string with an unchecked box" do
      task = Task.new("Go to shop")
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] Go to shop"
    end
  end

  context "given task is complete" do
    it "returns the task formatted as a string with a checked box" do
      task = Task.new("Go to shop")
      task.mark_complete
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] Go to shop"
    end
  end
end
