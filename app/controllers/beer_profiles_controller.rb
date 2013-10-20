class BeerProfilesController < ApplicationController
  before_action :set_beer_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_any_user, except: [:users, :show]

  def index
    @beer_profiles = BeerProfile.where(:user_id => current_user.id)
    @user = current_user
  end

  def show
    @beer_profile = BeerProfile.find(params[:id])
  end

  def new
    @beer = Beer.where(:id => params['beer_id']).first
    if @beer.nil?
      redirect_to action: :index
    else
      @beer_profile = BeerProfile.new
      @beer_profile.beer_id = @beer[:id]
      @beer_profile.attributes = beer_properties(@beer)
      @from_untapped = @beer.brewery.present?
    end
  end

  def edit
    @beer_profile = BeerProfile.where(:user_id => current_user.id, :id => params[:id]).first
    @beer = Beer.find(@beer_profile.beer_id)
    @from_untapped = @beer.brewery.present?
  end

  def create
    @beer_profile = BeerProfile.new(beer_profile_params)
    @beer = Beer.find(@beer_profile.beer_id)
    @beer_profile.attributes = beer_properties(@beer) unless @beer.brewery.nil?
    @beer_profile.user_id = current_user.id

    if @beer_profile.save
      redirect_to @beer_profile, notice: 'Beer profile was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @beer_profile.update(beer_profile_params)
      redirect_to @beer_profile, notice: 'Beer profile was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @beer_profile.destroy
    redirect_to beer_profiles_url
  end

  def users
    @beer_profiles = BeerProfile.where(:user_id => params[:id])
    @user = User.where(:id => params[:id]).first

    render 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_profile
      @beer_profile = BeerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_profile_params
      params.require(:beer_profile).permit(:appearance_head_size, :appearance_head_texture, :appearance_head_color, :appearance_head_retention, :appearance_lacing, :appearance_body_opacity, :appearance_body_carbonation, :appearance_color, :appearance_notes, :aroma_malt, :aroma_hops, :aroma_esters, :aroma_phenols, :aroma_bitterness, :aroma_flavor_grain, :aroma_flavor_hops, :aroma_flavor_fruit, :aroma_flavor_herbs, :aroma_flavor_funk, :aroma_flavor_mineral, :aroma_flavor_other, :aroma_notes, :taste_malt, :taste_hops, :taste_esters, :taste_phenols, :taste_bitterness, :taste_flavor_grain, :taste_flavor_hops, :taste_flavor_fruit, :taste_flavor_herbs, :taste_flavor_funk, :taste_flavor_mineral, :taste_flavor_other, :taste_notes, :mouth_body, :mouth_carbonation, :mouth_alcohol, :mouth_richness, :mouth_astringency, :mouth_finish, :mouth_notes, :flavor_esters, :flavor_alcoholic, :flavor_citrus, :flavor_hoppy, :flavor_floral, :flavor_spicy, :flavor_malty, :flavor_toffee, :flavor_burnt, :flavor_sweet, :flavor_sour, :flavor_bitter, :flavor_astringent, :flavor_full_bodied, :beer_id, :flavor_lingers, :image_path, :name, :style, :brewery, :abv, :rating, :notes)
    end

    def beer_properties(beer)
      {
        name: beer.name,
        style: beer.style,
        brewery: beer.brewery,
        abv: beer.abv,
        image_path: beer.image_path
      }
    end
end
