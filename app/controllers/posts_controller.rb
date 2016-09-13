class PostsController < ApplicationController
  def index
    @posts = Post.order("updated_at DESC") #to show the most recent updated blog
  end

 def new
   @post = Post.new
 end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    end
  end

  def edit
    @post = Post.where(id: params[:id]).first
  end

  def update
    @post = Post.where(id: params[:id]).first
    if @post.update_attributes(post_params)
      redirect_to posts_path
    end
  end

  def destroy
    @post = Post.where(id: params[:id]).first #.first is going to load the post with the ID you are clicking
    if @post.destroy
      redirect_to posts_path
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
