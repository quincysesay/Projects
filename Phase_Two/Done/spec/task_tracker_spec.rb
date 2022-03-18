require 'task_tracker'

RSpec.describe TodoList do
  context "given no tasks" do
    it "has an empty list" do
      todo_list = TodoList.new
      expect(todo_list.list).to eq []
    end 
  end

  context "given a task" do
    it "returns the task in a list" do
      todo_list = TodoList.new
      todo_list.add("hoover the living room")
      expect(todo_list.list).to eq ["hoover the living room"]
    end
  end

  context "given multiple tasks" do
    it "returns all tasks in a list" do
      todo_list = TodoList.new
      todo_list.add("make the bed")
      todo_list.add("hoover the living room")
      todo_list.add("bake your cake")
      expect(todo_list.list).to eq ["make the bed","hoover the living room","bake your cake"]
    end
  end

  context "completed a task" do
    it "fails" do
      todo_list = TodoList.new
      todo_list.add("make the bed")
      todo_list.add("hoover the living room")
      todo_list.add("bake your cake")
      todo_list.complete("bake your cake")
      expect(todo_list.list).to eq [ "make the bed","hoover the living room"]
    end
  end

  context "when trying to do a nonexisting task" do
    it "takes the completed task from the list" do
      todo_list = TodoList.new
      todo_list.add("make the bed")
      todo_list.add("hoover the living room")
      expect{ todo_list.complete("do the laundry") }.to raise_error "No such Entry(Task) exists."
    end
  end
end