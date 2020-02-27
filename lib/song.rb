require 'pry'
class Song
    
    attr_accessor :name, :artist, :genre
    @@all = []
    @@artists = []
    @@genres = []
    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
        @@all << self
    end

#     def self.artists

#         Song.all
# binding.pry
#         #.map do |all_songs|
#         #      all-songs.artist
#         # end
#      end

     def self.count
         @@count
     end

     def self.artists
        @@artists.uniq
     end

     def self.genres
          @@genres.uniq 
     end

     def self.genre_count
        song_types_and_totals = {}
        
        @@genres.each do |genre|
        
            if song_types_and_totals[genre]
        
            song_types_and_totals[genre] += 1
            
            else 
                song_types_and_totals[genre] = 1
            end
        end  
        
        song_types_and_totals
     end

     def self.artist_count
        
        artists_and_totals = {}
    
    @@artists.each do |artist|
        
        if artists_and_totals[artist]
            
            artists_and_totals[artist] += 1
            
            else artists_and_totals[artist] = 1
        end 
    end    
        artists_and_totals
    end
end