require 'net/http'
require 'json'

class Artist < ActiveRecord::Base

  def self.similar_artists(artist)
    artists = []
    Echowrap.artist_similar(name: artist, results: 100).each do |artist|
      artists << artist.name
    end
    artists
  end

  # def self.assign_id(artists)
  #   artist_ids = []
  #   artists.each do |artist|
  #     url = URI('http://api.jambase.com/artists?name=#{artist}&page=0&api_key=jgtpnr2qu4tg3xkwwmrh4unh')
  #     response = JSON.parse(Net::HTTP.get(url))
  #     artist_ids << response
  #   end
  # end


  # def self.concerts(zip, artists)
  #   shows = []
  #   artists.each do |artist|

  #     url = URI("http://api.jambase.com/events?artistId=#{artist}&#{zip}=&radius=100&page=0&api_key=jgtpnr2qu4tg3xkwwmrh4unh")
  #     response = JSON.parse(Net::HTTP.get(url))
  #     shows << response

  #   end
  #   shows
  # end

end
