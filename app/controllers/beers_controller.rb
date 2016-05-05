require 'net/http'

class BeersController < ApplicationController

  before_filter :authenticate_any_user

  def index
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to(new_beer_profile_path + "?beer_id=" + @beer.id.to_s)
    else
      redirect_to :new, :flash => "There was a problem saving the beer."
    end
  end

  def search
    unless params[:q].nil?
      uri = URI("https://api.untappd.com/v4/search/beer")
      untapped_params = { :q => params[:q],
                 :client_id => ENV['UNTAPPED_CLIENT_ID'],
                 :client_secret => ENV['UNTAPPED_CLIENT_SECRET'] }
      uri.query = URI.encode_www_form(untapped_params)

      @result = Net::HTTP.get_response(uri)

      if @result.is_a?(Net::HTTPSuccess)
        @json = JSON.parse(@result.body)
        @beer = Beer.new
      end
    end
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :style, :brewery, :abv, :image_path)
  end

end
