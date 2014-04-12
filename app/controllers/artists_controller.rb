class ArtistsController < ApplicationController

  def index
    @phish = 'http://api.jambase.com/events?artistId=2698&zipCode=95128&page=0&api_key=JGTPNR2QU4TG3XKWWMRH4UNH'
  end

  def show
    @artists = Artist.similar_artists(params[:id])
  end

end
