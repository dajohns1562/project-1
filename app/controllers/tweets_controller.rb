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
    tweet = Tweet.find params[:id]
    tweet.destroy
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:content)
  end

end
