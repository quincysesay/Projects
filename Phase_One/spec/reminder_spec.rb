require 'reminder'

RSpec.describe Reminder do
  it "reminds the user to do a task" do
    reminder = Reminder.new("Tuesday")
    reminder.remind_me_to("Hoover")
    result = reminder.remind()
    expect(result).to eq "Hoover, Tuesday!"
  end
end