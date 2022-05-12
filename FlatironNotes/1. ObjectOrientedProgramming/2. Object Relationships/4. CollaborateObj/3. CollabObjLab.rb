# Build classes that interact with one another thru association and behavior

class Artist 
    attr_accessor :name, :songs

    @@all = [] # stores all instance of Artist

    def initialize(name)
        @name = name 
        @@all << self   # saves all created instances of Artist class in
                        # @@all class variable
    end 

    def self.all  
        # class method all returns all instance of Artist class
        @@all 
    end

    def add_song(song) 
        song.artist = self 
        # self.songs << song    # Artist.songs reader returns all songs
                                # stord in @songs
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end

    def self.find_or_create_by_name(name) 
        # class methods uses find class methods to find instance
        self.find(name) ? self.find(name) : self.new(name)
    end

    def self.find(name) 
        # class method find instances from @@all class variable
        self.all.find{|artist| artist.name == name}
    end

    def print_songs 
        # instance method iterates thru @songs of an instance of Artist
        songs.each{|song| puts song.name}
    end
end

class Song 
    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        save 
    end

    def self.all 
        @@all
    end

    def self.new_by_filename(filename)
        artist, song = filename.split(" - ")
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
    end

    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
        artist.add_song(self)
    end
end

class MP3Importor
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files 
        files = []
        Dir.new(self.path).each do |file|
            files << file if file.length > 4
        end
        files
    end

    def import 
        files.each{|f| Song.new_by_filename(f)}
    end
end