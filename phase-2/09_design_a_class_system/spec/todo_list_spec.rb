require "todo_list"

describe TodoList do
  context "initially" do
    describe "#all" do
      it "returns an empty array" do
        todo_list = TodoList.new
        expect(todo_list.all).to eq []
      end
    end
  end
end
