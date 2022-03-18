require 'task_list'

RSpec.describe "" do
  context "Initially" do
    it "returns an empty list of tasks" do
      task_list = TaskList.new
      expect(task_list.all).to eq [] 
    end

    it "has a empty list of complete tasks" do
      task_list = TaskList.new
      expect(task_list.complete).to eq []
    end
  end
end