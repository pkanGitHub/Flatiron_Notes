class Song 
    attr_accessor :artist 

    def initialize(name)
        @name = name 
    end

    # other methods

    def artist_name=(name)
        if (self.artist.nil?)
            self.artist = Artist.new(name)
        else
            self.artist.name = name
        end
    end
end

class Artist
    attr_accessor :name 

    def initialize(name)
        @name = name
    end

    # other methods

end

hotline_bling = Song.new("Hotline Bling")
hotline_bling.artist_name = "Drake"
p hotline_bling.artist 
