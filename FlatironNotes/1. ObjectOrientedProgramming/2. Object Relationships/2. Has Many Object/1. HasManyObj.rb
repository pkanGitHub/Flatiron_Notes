# Describe the "has many" relationship between Ruby objects
# Build classes that produce objects with a "belongs-to" and "has-many" relationship
# Explain why we need to associate objects in this way

class Song 
    attr_accessor :artist, :name, :genre 

    def initialize(name, genre)
        @name = name 
        @genre = genre 
    end
end

class Artist 
    attr_accessor :name 

    def initialize(name)
        @name = name
        @songs = [] # initialize with an Empty Collection
    end

    def add_song(song)
        @songs << song
    end

    def songs 
        @songs 
    end
end

# We can set an individual instance of Song equal to an instance of the Artist class like this:

kiki = Song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")
# drake.add_song("In My Feelings")
# p drake.songs # => ["In My Feelings"]
# drake.add_song("Hotline Bling")
# p drake.songs # => ["In My Feelings", "Hotline Bling"]

drake = Artist.new("Drake")
drake.add_song(kiki)
drake.add_song(hotline)

drake.songs.collect do |song|
   p song.genre # => ["hip-hop", "pop"]
end


# => [#<Song:0x00007f9d8090f810 @name="In My Feelings", @genre="hip-hop">, 
# #<Song:0x00007f9d8090f798 @name="Hotline Bling", @genre="pop">]

# THE INVERSE OF THE "belongs-to" relationship is the "has-many" relationship. If the song belong
# to an artist, then an artist should be able to have many songs. 

