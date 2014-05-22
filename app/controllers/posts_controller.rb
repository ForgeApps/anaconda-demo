class PostsController < ApplicationController  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.create(post_params)
    render :show
  end
  
  private
  def post_params
    params.require(:post).permit(
      :title,
      Post.anaconda_fields_for( :asset )
    )
  end
end