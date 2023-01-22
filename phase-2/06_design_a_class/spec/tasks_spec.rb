require "tasks"

describe Tasks do
  describe "#list" do
    it "returns an empty array" do
      tasks = Tasks.new
      expect(tasks.list).to eq []
    end

    it "returns an added task" do
      tasks = Tasks.new
      tasks.add("Go to shop")
      expect(tasks.list).to eq ["Go to shop"]
    end

    it "returns two added tasks" do
      tasks = Tasks.new
      tasks.add("Go to shop")
      tasks.add("Clean the house")
      expect(tasks.list).to eq ["Go to shop", "Clean the house"]
    end

    context "given a task has been completed" do
      it "returns tasks list without the given task" do
        tasks = Tasks.new
        tasks.add("Go to shop")
        tasks.add("Clean the house")
        tasks.complete("Go to shop")
        expect(tasks.list).to eq ["Clean the house"]
      end
    end
  end

  describe "#add" do
    context "given an empty string" do
      it "throws an error" do
        tasks = Tasks.new
        expect { tasks.add("") }.to raise_error "Task cannot be empty"
      end
    end
  end

  describe "#complete" do
    context "given a nonexistant task" do
      it "throws an error" do
        tasks = Tasks.new
        expect { tasks.complete("Go to shop") }.to raise_error "Task does not exist"
      end
    end
  end
end
