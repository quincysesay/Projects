require 'counter'

RSpec.describe Counter do
  it "Adds numbers given by a user" do
    counter = Counter.new
    counter.add(1)
    result = counter.report
    expect(result).to eq "Counted to 1 so far."
  end
end