require "task_list"

describe TaskList do
  context "initially" do
    describe "#all" do
      it "returns an empty array" do
        task_list = TaskList.new
        expect(task_list.all).to eq []
      end
    end

    describe "#all_complete?" do
      it "returns false" do
        task_list = TaskList.new
        expect(task_list.all_complete?).to be false
      end
    end
  end

  # Unit test `#all` and `#all_complete?` behaviour
  context "given multiple tasks added" do
    describe "#all" do
      it "returns all added tasks" do
        task_list = TaskList.new
        task_1 = double(:task)
        task_2 = double(:task)
        task_list.add(task_1)
        task_list.add(task_2)
        expect(task_list.all).to eq [task_1, task_2]
      end
    end

    describe "#all_complete?" do
      context "given some tasks marked complete" do
        it "returns false" do
          task_list = TaskList.new
          task_1 = double(:task)
          expect(task_1).to receive(:complete?).and_return(true)
          task_2 = double(:task)
          expect(task_2).to receive(:complete?).and_return(false)
          task_list.add(task_1)
          task_list.add(task_2)
          expect(task_list.all_complete?).to be false
        end
      end
      context "given all tasks marked complete" do
        it "returns true" do
          task_list = TaskList.new
          task_1 = double(:task)
          expect(task_1).to receive(:complete?).and_return(true)
          task_2 = double(:task)
          expect(task_2).to receive(:complete?).and_return(true)
          task_list.add(task_1)
          task_list.add(task_2)
          expect(task_list.all_complete?).to be true
        end
      end
    end
  end
end
