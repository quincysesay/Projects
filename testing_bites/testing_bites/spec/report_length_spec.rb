require "report_length"

RSpec.describe "Counts a string input" do
  it "returns the length of a string input" do
  result = report_length("hello")
  expect(result).to eq "This string was 5 characters long."
  end
end