class PlayedMusic
  def initialize
    @played = []
  end

  def list
    @played 
  end

  def add(played)
    @played << played
  end
end