class PostsController < ApplicationController
  before_action :set_post, only: %i[show]
  before_action :authenticate_user!, only: %i[show]

  def index
    @posts = Post.all.includes(:user)
  end

  def show
    @comments = @post.comments.includes(:user)
    @comment = Comment.new
    user_session[:post_id] = @post.id
    gon.push({user_id: current_user.id,
              post_id: @post.id})
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end
end