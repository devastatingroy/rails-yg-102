class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def destroy
    @post.destroy
    flash[:alert] = "post deleted"
    redirect_to account_posts_path
  end

end
