class FollowingsController < ApplicationController
  before_action :authenticate_any_user
  before_action :set_following, only: [:show, :edit, :update, :destroy]

  # GET /followings
  def index
    @followings = current_user.followings
    @followers = current_user.followers
  end

  # GET /followings/1
  def show
  end

  # GET /followings/new
  def new
    following_ids = current_user.followings.select(&:id) 
    following_ids << current_user.id
    @users = User.where("email LIKE ? and id not in (?)", "%#{params[:email]}%", following_ids)
    @following = Following.new
  end

  # POST /followings
  def create
    @following = Following.new(following_params)
    @following.user_id = current_user.id

    if @following.save
      format.html { redirect_to :action => :index, notice: 'Following was successfully created.' }
    else
      format.html { render action: 'new' }
    end
  end

  # DELETE /followings/1
  def destroy
    @following.destroy
    redirect_to followings_url
  end

  def search
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_following
      @following = Following.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def following_params
      params.require(:following).permit(:user_id, :followed_id)
    end
end
