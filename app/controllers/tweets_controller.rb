class TweetsController < ApplicationController

  def show
    @tweets = Tweet.all
  end

  def create
    tweet = Tweet.create tweet_params
    @current_user.tweets << tweet
  # or @current_user.mixtapes.create << this works without  "optional true"
    redirect_to root_path
  end

  def destroy
    @tweet = Tweet.find params[:id]
    planet.destroy
    redirect_to planets_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content)
  end

end
