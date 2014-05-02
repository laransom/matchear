require 'net/http'
require 'json'

class ArtistsController < ApplicationController

  def index

  end

  def show
    @artists = Artist.similar_artists(params[:id])

    # url = URI('http://api.jambase.com/artists?name=#Lady+Gaga&page=0&api_key=jzexac7vhrp72mmrxj69h53y')
    # response = JSON.parse(Net::HTTP.get(url))
    # @show = response
  end

end
