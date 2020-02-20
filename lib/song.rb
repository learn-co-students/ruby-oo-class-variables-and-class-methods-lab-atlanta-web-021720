require 'pry'
class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artists_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        @@genres << @genre
        @@artists << @artist



    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.map {|genre_index|
            @@genre_count[genre_index] ||= 0
            @@genre_count[genre_index] += 1
        }

        @@genre_count
    end

    def self.artist_count
        @@artists.map {|index|
            @@artists_count[index] ||= 0
            @@artists_count[index] += 1
        }
        @@artists_count
    end
end