class Song
    attr_accessor :name, :artist 

    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def artist_name
        artist.name if artist
    end

    def self.all 
        @@all
    end
end

class Artist 
    attr_accessor :name 

    @@all = []

    def initialize(name) 
        @name = name
        @@all << self # equal to save method
    end

    def self.all 
        @@all
    end

    def add_song(song)
        song.artist = self
    end

    def song
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self 
    end

    def self.song_count
        Song.all.count
    end

end