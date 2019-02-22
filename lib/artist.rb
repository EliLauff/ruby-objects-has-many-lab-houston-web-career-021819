class Artist

    attr_accessor :name, :songs
    @@all_songs = []

    def initialize(name)
        self.name = name
        self.songs = []
    end

    def add_song(song)
        song.artist = self
        self.songs << song
        @@all_songs << song
    end

    def add_song_by_name(song_name)
        song_name = Song.new(song_name)
        self.add_song(song_name)
    end

    def self.song_count
        @@all_songs.length
    end

    
end