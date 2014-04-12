class ArtistsController < ApplicationController

  def index

  end

  def show
    @artists = Artist.similar_artists(params[:id])
  end

end
