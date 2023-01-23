describe "doubles challenge" do
  it "creates a sophisticated double" do
    task_list = double(:task_list)
    task = double(:task)
    allow(task_list).to receive(:add).with(task)
    allow(task_list).to receive(:list).and_return([task])
    allow(task_list).to receive(:count).and_return(1)
    allow(task_list).to receive(:clear).and_return(:success)

    # Don't edit below
    task_list.add(task)
    expect(task_list.list).to eq [task]
    expect(task_list.count).to eq 1
    expect(task_list.clear).to eq :success
  end
end
