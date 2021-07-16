class UsersController < ApplicationController
  before_action :authenticate_user! # 追加
  
  def index
    @users = User.all # 追加
  end

  def show
    @user = User.find(params[:id]) # 追加
# ===============追加==============
    @tweets = @user.tweets
# ================================
    @favorite_tweets = @user.favorite_tweets # 追加:favorit機能
  end
end
