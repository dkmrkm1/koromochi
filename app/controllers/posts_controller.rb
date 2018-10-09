class PostsController < ApplicationController

  def index
    # @posts = Post.all
    @posts = Post.page(params[:page]).per(5)
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def new
  end

  def create
    @post = Post.new(content: params[:content])
    @post.save

    redirect_to("/posts/index")
  end
end
