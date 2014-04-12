class Artist < ActiveRecord::Base

  def self.similar_artists(artist)
    Echowrap.artist_similar(name: artist, results: 100)
  end

end
