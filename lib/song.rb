class Song
    @@count = 0
    @@genres = []
    @@artists = []
    @@genreCount = {}
    @@artistCount = {}
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end
    def self.artists
        @@artists.uniq
    end
    def self.genres
        @@genres.uniq
    end
    def self.count
        @@count
    end
    def self.genre_count
        @@genres.each do |genre|
            @@genreCount.merge!({genre => @@genres.count(genre)})
        end
        return @@genreCount
    end
    def self.artist_count
        @@artists.each do |artist|
            @@artistCount.merge!({artist => @@artists.count(artist)})
        end
        return @@artistCount
    end
end
