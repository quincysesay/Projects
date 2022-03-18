require 'check_todo'

RSpec.describe "check_todo method" do
  it "returns true if string includes @TODO" do
    result = check_todo("@TODO Hovering")
    expect(result).to eq true
  end

  it "returns false if string does not include @TODO" do
    result = check_todo("Hovering")
    expect(result).to eq false
 end
end