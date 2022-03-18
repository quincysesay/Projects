require 'grammar_stats'

RSpec.describe "Grammar stat method" do
  context "given an empty string" do
    it "fails" do
      string = GrammarStats.new
      expect { string.check("")}.to raise_error "Not a sentence."
    end
  end

  it "returns a percentage of text that passed the check" do
    count = GrammarStats.new 
    count.check("hello world")
    count.check("Hello World.")
    expect(count.percentage_good).to eq 50
  end
end