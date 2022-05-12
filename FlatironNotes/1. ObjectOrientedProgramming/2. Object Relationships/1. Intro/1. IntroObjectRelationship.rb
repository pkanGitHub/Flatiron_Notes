class Song 
    attr_accessor :title, :artist 

    def initialize(title)
        @title = title 
    end
end

class Artist 
    attr_accessor :name, :genre

    def initialize(name, genre)
        @name = name 
        @genre = genre
    end
end

drake = Artist.new("Drake", "rap")

# Now create a new song like this: 
hotline_bling = Song.new("Hotline Bling")
# And we can return it's title to us like this: 
# ************************
# p hotline_bling.title 
    # => "Hotline Bling"
# ************************
p hotline_bling.artist = drake

# Now we can ask for the genre of the artist of hotline_bling:
p hotline_bling.artist.genre # => "rap"
p hotline_bling.artist.name # => "Drake"


