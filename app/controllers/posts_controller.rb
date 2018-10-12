class PostsController < ApplicationController

  def index
    @posts = Post.all.order(created_at: :desc)
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
  
  def edit
    # @postに投稿情報を代入し、編集画面で確認できるようにする
    @post = Post.find_by(id: params[:id])
  end

  def update
    # パラメータで送られてきた投稿の内容を、フォームの内容で変更する
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    @post.save

    redirect_to("/posts/index")
  end

  def destroy
    redirect_to("/posts/index")
  end
end
