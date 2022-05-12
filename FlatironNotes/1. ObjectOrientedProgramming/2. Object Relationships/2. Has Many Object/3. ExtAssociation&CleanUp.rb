class Song 
    attr_accessor :artist, :name, :genre 

    @@all = []

    def initialize(name, genre)
        @name = name 
        @genre = genre 
        save 
    end

    def artist_name
        self.artist.name
    end

    def save 
        @@all << self 
    end

    def self.all 
        @@all
    end
end

class Artist 
    attr_accessor :name 

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end

    def songs 
        Song.all.select {|song| song.artist == self}
    end

    def add_song_by_name(name, genre)
        song = Song.new(name, genre)
        add_song(song)
    end
end

kiki = Song.new("In My Feelings", "hip-hop")
drake = Artist.new("Drake")
drake.add_song(kiki)
p kiki.artist.name # => "Drake"