require 'task_list'
require 'task'

RSpec.describe "integration" do
  it "adds tasks and lists them out" do
    task_list = TaskList.new
    task_1 = Task.new("Hoover the carpet")
    task_2 = Task.new("Do the laundry")
    task_list.add(task_1)
    task_list.add(task_2)
    expect(task_list.all).to eq [task_1, task_2]
  end

  context "once a task is marked complete" do
    it "it does not show in the task list" do
      task_list = TaskList.new
      task_1 = Task.new("Hoover the carpet")
      task_2 = Task.new("Do the laundry")
      task_list.add(task_1)
      task_list.add(task_2)
      task_2.mark_complete
      expect(task_list.all).to eq [task_1]
    end

    it "appear in the completed list" do
      task_list = TaskList.new
      task_1 = Task.new("Hoover the carpet")
      task_2 = Task.new("Do the laundry")
      task_list.add(task_1)
      task_list.add(task_2)
      task_2.mark_complete
      expect(task_list.complete).to eq [task_2] 
    end
  end
end