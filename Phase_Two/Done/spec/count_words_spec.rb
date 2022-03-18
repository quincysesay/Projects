require 'count_words'

#A method called count_words that takes a string as an 
# argument and returns the number of words in that string.

RSpec.describe "count_words method" do
  # it "returns the number of words in a string" do
  #   result = count_words("another word")
  #   expect(result).to eq 2
  # end

  it " returns the amount of words in the string " do
    amount = count_words("Hello there world")
    expect(amount).to eq 3
  end
end