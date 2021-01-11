class Artist
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def add_song(song)
        song.artist = self
    end
    
    def add_song_by_name(song)
        song = Song.new(song)
        song.artist = self
    end

    def self.song_count
        Song.all.length
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end 
end

# Artist
#   #new
#     is initialized with a name
#   #name
#     has an attr_accessor for name
#   #songs
#     has many songs
#   #add_song
#     takes in an argument of a song and associates that song with the artist by telling the song that it belongs to that artist
#   #add_song_by_name
#     takes in an argument of a song name, creates a new song with it and associates the song and artist
#   .song_count
#     is a class method that returns the total number of songs associated to all existing artists