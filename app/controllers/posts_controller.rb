class PostsController < ApplicationController
  before_action :authenticate_user!, only: [ :new, :create ]

  def new
    @user = current_user
    @post = @user.posts.build
  end

  def index
    @posts = Post.all
  end
end
