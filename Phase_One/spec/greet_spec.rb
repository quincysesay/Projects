require "greet"

RSpec.describe "greet method" do
  it "it prints Hello + user_name" do
    result = greet("Quincy")
    expect(result).to eq "Hello, Quincy!"
  end
end