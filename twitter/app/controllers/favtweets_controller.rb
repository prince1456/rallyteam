class FavtweetsController < ApplicationController
  def index
      @tweets = Favtweet.where(user_id: current_user.id).order(id: :desc)
  end

  def create
    @favtweets = Favtweet.new strong_params
    @favtweets.user = current_user
    if @favtweets.save
      redirect_to root_path
    else
        flash[:alert] = "Please fix errors below before saving"
        redirect_to root_path
      end
  end

  private
  def strong_params
    params.require(:favtweet).permit(:tweets, :image, :date, :text, :followers, :name, :screen_name)
  end
end
