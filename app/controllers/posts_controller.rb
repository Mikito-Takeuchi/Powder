class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @posts = Post.joins(:gelande)
    # byebug
  end
  
  
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
#binding pry
    if @post.save
      redirect_to posts_path, success: '作成に成功しました'
    else
      flash.now[:danger] = "作成に失敗しました"
      render :new
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :gelande_id, :date, :how, :text)
  end
end
