require 'task'

RSpec.describe Task do
  it "constructs" do
    task = Task.new("Cook Dinner")
    expect(task.title).to eq "Cook Dinner"
  end

  it "not completed" do
    task = Task.new("Cook Dinner")
    expect(task.complete?).to be_falsy  # == false  
  end

  it "marked complete" do
    task = Task.new("Cook Dinner")
    task.mark_complete
    expect(task.complete?).to be_truthy  # == true
  end
end