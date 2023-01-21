require "todo_list"

describe TodoList do
  context "initially" do
    describe "#incomplete" do
      it "returns an empty array" do
        todo_list = TodoList.new
        expect(todo_list.incomplete).to eq []
      end
    end

    describe "#complete" do
      it "returns an empty array" do
        todo_list = TodoList.new
        expect(todo_list.complete).to eq []
      end
    end
  end
end
