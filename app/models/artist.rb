class Artist < ActiveRecord::Base

  def similar_artists(artist)
    Echowrap.artist_similar(id: artist.id, results: 20)
  end

end
