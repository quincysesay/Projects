class Track
  def initialize(title, artist) 
    @title = title
    @artist = artist
  end

  def format
   return "#{@title} by #{@artist}"
  end

  def title
    @title
  end

  def artist
    @artist
  end
end