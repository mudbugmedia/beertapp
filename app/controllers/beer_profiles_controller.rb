class BeerProfilesController < ApplicationController
  before_action :set_beer_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_any_user

  # GET /beer_profiles
  # GET /beer_profiles.json
  def index
    @beer_profiles = BeerProfile.where(:user_id => current_user.id)
  end

  # GET /beer_profiles/1
  # GET /beer_profiles/1.json
  def show
    @beer_profile = BeerProfile.find(params[:id])
  end

  # GET /beer_profiles/new
  def new
    @beer_profile = BeerProfile.new
  end

  # GET /beer_profiles/1/edit
  def edit
  end

  # POST /beer_profiles
  # POST /beer_profiles.json
  def create
    @beer_profile = BeerProfile.new(beer_profile_params)

    respond_to do |format|
      if @beer_profile.save
        format.html { redirect_to @beer_profile, notice: 'Beer profile was successfully created.' }
        format.json { render action: 'show', status: :created, location: @beer_profile }
      else
        format.html { render action: 'new' }
        format.json { render json: @beer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beer_profiles/1
  # PATCH/PUT /beer_profiles/1.json
  def update
    respond_to do |format|
      if @beer_profile.update(beer_profile_params)
        format.html { redirect_to @beer_profile, notice: 'Beer profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @beer_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beer_profiles/1
  # DELETE /beer_profiles/1.json
  def destroy
    @beer_profile.destroy
    respond_to do |format|
      format.html { redirect_to beer_profiles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beer_profile
      @beer_profile = BeerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beer_profile_params
      params.require(:beer_profile).permit(:appearance_head_size, :appearance_head_texture, :appearance_head_color, :appearance_head_retention, :appearance_lacing, :appearance_body_opacity, :appearance_body_carbonation, :appearance_color, :appearance_notes, :aroma_malt, :aroma_hops, :aroma_esters, :aroma_phenols, :aroma_bitterness, :aroma_flavor_grain, :aroma_flavor_hops, :aroma_flavor_fruit, :aroma_flavor_herbs, :aroma_flavor_funk, :aroma_flavor_mineral, :aroma_flavor_other, :aroma_notes, :taste_malt, :taste_hops, :taste_esters, :taste_phenols, :taste_bitterness, :taste_flavor_grain, :taste_flavor_hops, :taste_flavor_fruit, :taste_flavor_herbs, :taste_flavor_funk, :taste_flavor_mineral, :taste_flavor_other, :taste_notes, :mouth_body, :mouth_carbonation, :mouth_alcohol, :mouth_richness, :mouth_astringency, :mouth_finish, :mouth_notes, :flavor_esters, :flavor_alcoholic, :flavor_citrus, :flavor_hoppy, :flavor_floral, :flavor_spicy, :flavor_malty, :flavor_toffee, :flavor_burnt, :flavor_sweet, :flavor_sour, :flavor_bitter, :flavor_astringent, :flavor_full_bodied, :flavor_lingers)
    end
end
