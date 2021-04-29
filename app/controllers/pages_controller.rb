class PagesController < ApplicationController
  def home
    if @current_user.present?
      @tweets = Tweet.all.where(user_id: @current_user.followed_users).reverse
    else
      redirect_to login_path
    end
  end
end
