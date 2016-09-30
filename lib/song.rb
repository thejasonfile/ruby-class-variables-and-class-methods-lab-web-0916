require "pry"

class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << @genre
    @@artists << @artist
    @@count += 1
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
    @@genres.each_with_object({}) do |genre, hash|
      if hash.has_key?(genre)
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, hash|
      if hash.has_key?(artist)
        hash[artist] += 1
      else
        hash[artist] = 1
      end
    end
  end

end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")