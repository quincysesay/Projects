require 'music_list'

RSpec.describe PlayedMusic do

  context "no music given" do
    it "has a empty list" do
      played = PlayedMusic.new
      expect(played.list).to eq []
    end 
  end

  context "given a title of track played" do
    it "returns a list of the track in a list" do
        played = PlayedMusic.new
        played.add("Speechless")
        expect(played.list).to eq ["Speechless"]
    end 
  end

  context "given multiple tracks" do
    it "returns all the tracks in a list" do
      played = PlayedMusic.new
      played.add("Speechless")
      played.add("The Truth")
      played.add("Dedicated")
      expect(played.list).to eq [ "Speechless","The Truth","Dedicated" ]   
    end
  end
end 