class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.songs.artists.count
    binding.pry
    # return the number of artists associated with the genre
  end

  def all_artist_names
    # return an array of strings containing every musician's name
  end
end
