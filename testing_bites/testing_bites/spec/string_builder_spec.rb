require 'string_builder'

RSpec.describe 'string-builder' do 
  it "returns a string" do
  string_builder = StringBuilder.new
  word = string_builder.output
  expect(word).to eq ""
  end
  it "adds a string" do
    string_builder = StringBuilder.new
    string_builder.add("cow")
    expect(string_builder.output).to eq "cow"
  end
  it "returns the lenght of the word" do
    string_builder = StringBuilder.new
    string_builder.add("cow")
    expect(string_builder.size).to eq 3
  end

end
