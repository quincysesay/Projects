                        Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


2. Design the Class Interface

--ruby

class PlayedMusic

  def add(text) # text is a string representing the track_title
  # returns nothing
  end

  def list
  # returns a list of the track title played as a string
  end

end

3. Create Examples as Tests

# 1
played = PlayedMusic.new
played.list # => []

# 2
played = PlayedMusic.new
played.add("Speechless")
played.list # => ["Speechless"]

# 3
played = PlayedMusic.new
played.add("Speechless")
played.add("The Truth")
played.add("Dedicated")
played.list # => [ "Speechless","The Truth","Dedicated" ]



4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

