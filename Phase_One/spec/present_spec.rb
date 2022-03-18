require 'present'

RSpec.describe Present do
  context "present already wrap" do
    it "fails" do
      gift = Present.new() 
      expect { gift.wrap(1) }.to raise_error "A content has already been wrapped." unless @content.nil? 
    end
  end

  context "present already wrap" do
    it "fails" do
      gift = Present.new() 
      expect { gift.unwrap() }.to raise_error "No contents have been wrapped." if @content.nil? 
    end
  end
end