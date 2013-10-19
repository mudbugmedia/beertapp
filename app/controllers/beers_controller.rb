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
    uri = URI("http://api.untappd.com/v4/search/beer")
    params = { :q => request[:q],
               :client_id => Rails.application.config.untapped_api['client_id'],
               :client_secret => Rails.application.config.untapped_api['client_secret'] }
    uri.query = URI.encode_www_form(params)

    @result = Net::HTTP.get_response(uri)

    if @result.is_a?(Net::HTTPSuccess)
      @json = JSON.parse(@result.body)
      @beer = Beer.new
    end
  end

  private

  def beer_params
    params.require(:beer).permit(:name, :style, :brewery, :abv, :image_path)
  end

end
