class Song 
    attr_accessor :artist, :name, :genre 

    @@all = []

    def initialize(name, genre)
        @name = name 
        @genre = genre 
        save 
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
end

# kiki = Song.new("In My Feelings", "hip-hop")
# drake = Artist.new("Drake")
# drake.add_song(kiki)
# p kiki.artist.name # => "Drake"

lil_nas_x = Artist.new("Lil Nas X")
rick = Artist.new("Rick Astley")

old_town_road = Song.new("Old Town Road", "hip-hop")
never_gonna_give_you_up = Song.new("Never Gonna Give You Up", "pop")

old_town_road.artist = lil_nas_x
never_gonna_give_you_up.artist = rick 

# p old_town_road.artist.name # => "Lil Nas X"
# p lil_nas_x.songs # => []

p Song.all.first.name # => "Old Town Road"
p Song.all.first.genre # => "hip-hop"
p Song.all.first.artist # => #<Artist:0x00007fbcac90b288 @name="Lil Nas X", @songs=[]>
p Song.all.first.artist.name # => "Lil Nas X"

p Song.all.last.name # => "Never Gonna Give You Up"
p Song.all.last.genre # => "pop"
p Song.all.last.artist # =>  #<Artist:0x00007fbcac90b210 @name="Rick Astley", @songs=[]>
p Song.all.last.artist.name # => "Rick Astley"

# Now that we've got a way to get all songs, if we want to find all the songs that belong to 
# a particular artist, we can just 'select' the appropriate songs.

p Song.all.select {|song| song.artist == lil_nas_x}
# => [#<Song:0x00007fa52c806e60 @name="Old Town Road", @genre="hip-hop", @artist=#<Artist:0x00007fa52c806f78 @name="Lil Nas X", @songs=[]>>]
p Song.all.select {|song| song.artist == rick}
# => [#<Song:0x00007fa52c806de8 @name="Never Gonna Give You Up", @genre="pop", @artist=#<Artist:0x00007fa52c806f00 @name="Rick Astley", @songs=[]>>]