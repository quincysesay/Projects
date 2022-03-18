require 'string_builder'

RSpec.describe StringBuilder do 
  it "Initializes an empty string" do
  string_builder = StringBuilder.new
  expect(string_builder.output).to eq ""
  end

  it "Initially returns a lenghth of 0" do
    string_builder = StringBuilder.new
    expect(string_builder.size).to eq 0
  end 

  it "adds a string" do
    string_builder = StringBuilder.new
    string_builder.add("cow")
    expect(string_builder.output).to eq "cow"
  end

  it "returns the size of the string" do
    string_builder = StringBuilder.new
    string_builder.add("cow")
    expect(string_builder.size).to eq 3
  end

end
