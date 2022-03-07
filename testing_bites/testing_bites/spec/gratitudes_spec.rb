require 'gratitudes'

RSpec.describe 'gratitude' do
  it "Returns an array with user input" do
    gratis = Gratitudes.new
    result = gratis.add('tea')
    expect(result).to eq ['tea']
  end
  it "formats the array" do
    gratis = Gratitudes.new
    gratis.add('tea')
    gratis.add('milk')
    gratis.add('hot chocolate')
    expect(gratis.format).to eq "Be grateful for: tea, milk, hot chocolate"
  end
end