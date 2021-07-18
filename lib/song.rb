class Song
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count

    attr_reader :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

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
        count = {}
        @@genres.each {|genre| count[genre] =  count[genre] ? count[genre]+1 : 1}
        count
      end

    def self.artist_count
        count = {}
        @@artists.each {|artist| count[artist] =  count[artist] ? count[artist]+1 : 1}
        count
    end
end