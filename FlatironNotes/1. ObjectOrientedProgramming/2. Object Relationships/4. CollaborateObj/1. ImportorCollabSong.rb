# Use other classes and methods within another class to collaboratively 
# send messages to one another


class Song 
    attr_accessor :title 

    def self.new_by_filename(filename)
        song = self.new 
        song.title = filename.split(" - ")[1]
        song 
    end
end

class MP3Importor
    def import(list_of_filename)
        list_of_filename.each {|filename| Song.new_by_filename(filename)}
    end
end

