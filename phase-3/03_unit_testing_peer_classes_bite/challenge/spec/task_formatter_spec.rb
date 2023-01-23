require "task_formatter"

describe TaskFormatter do
  context "given task is not complete" do
    it "returns the task formatted as a string with an unchecked box" do
      task = double(:task, title: "Go to shop", complete?: false)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [ ] Go to shop"
    end
  end

  context "given task is complete" do
    it "returns the task formatted as a string with a checked box" do
      task = double(:task, title: "Go to shop", complete?: true)
      task_formatter = TaskFormatter.new(task)
      expect(task_formatter.format).to eq "- [x] Go to shop"
    end
  end
end
