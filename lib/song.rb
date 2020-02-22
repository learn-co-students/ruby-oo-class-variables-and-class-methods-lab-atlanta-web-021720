class Song
    
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
    
        @@artists << artist 
        @@genres << genre 
        @@count += 1
        @@all << self 
    end

    def self.count
        @@count 
    end

    def self.genres
        genres_array = []
        @@genres.each { |genre| 
            if !genres_array.include? genre
                genres_array << genre 
            end 
         }
         genres_array
    
    end 

    def self.artists
       artists_array = []
       @@artists.each { |artist|
            if !artists_array.include? artist
                artists_array << artist
            end
          } 
          artists_array 
    end
    
    def self.genre_count
        count_hash = {}
        @@genres.each { |genre| 
            if count_hash.has_key? genre 
                current_count = count_hash[genre]
                current_count += 1
                # count_hash << count_hash[genre]
                count_hash[genre] = current_count 
            else 
                count_hash[genre] = 1
            end 
          }
           # end
        count_hash
    end
    
    def self.artist_count
        count_hash = {}
        @@artists.each { |artist|
            if count_hash.has_key? artist
                current_count = count_hash[artist]
                current_count += 1
                count_hash[artist] = current_count
            else
                count_hash[artist] = 1
            end 
          }  
        count_hash
    end    
end



# like_a_virgin = Song.new("Like a Virgin", "Madonna", "Pop")
# puts Song.count
# kiss_from_a_rose = Song.new("Kiss fromm a rose", "Seal", "Pop")
# puts Song.count
# takk = Song.new("Ta1kk", "Si1gor Ros", "Rock")
# takk = Song.new("T2akk", "S2igor Ros", "Rock")
# takk = Song.new("T3akk", "Si4gor Ros", "Pop")
# takk = Song.new("Ta4kk", "Si3gor Ros", "Rap")
# takk = Song.new("Tak5k", "Si5gor Ros", "Rap")
# takk = Song.new("Ta6kk", "Si6gor Ros", "Industrial")
# takk = Song.new("Tak7k", "Si7gor Ros", "Pop")

Song.genre_count()