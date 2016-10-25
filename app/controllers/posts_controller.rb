class PostsController < ApplicationController
  def index
    @posts = Post.order("updated_at DESC") #to show the most recent updated blog
  end

 def show
   @post = Post.where(id: params[:id]).first
 end
end
