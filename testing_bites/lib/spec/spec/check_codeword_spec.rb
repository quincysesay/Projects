require "check_codeword"

RSpec.describe "check_code method" do
  it "returns a wrong message if given the wrong codeword" do
    result = check_codeword("cow")
    expect(result).to eq "WRONG!"
  end

  it "returns the correct message if given the correct codeword" do
    result = check_codeword ("horse")
    expect(result).to eq "Correct! Come in"
  end

  it "returns a almost message if given a codeword that is close" do
    result = check_codeword("house")
    expect(result).to eq ("Close, but nope")
  end
end