class PostsController < ApplicationController
  
  def new
    @post = Post.new
    respond_to do |format|
      format.html { @post }
      format.json { render json: {post: @post.anaconda_form_data_for_all_columns }}
    end
  end
  
  def create
    @post = Post.create(post_params)
    respond_to do |format|
      format.html { render :show }
      format.json { render json: {post: post_data } }
    end
  end
  
  def index
    respond_to do |format|
      format.html { }
      format.json { render json: { posts: Post.last(15).collect{|p| post_data(p) } } }
    end
  end
  
  private
  def post_params
    params.require(:post).permit(
      :title,
      Post.anaconda_fields_for( :asset )
    )
  end
  
  def post_data( post = @post)
    {
      title: post.title,
      asset_filename: post.asset_filename,
      asset_size: post.asset_size,
      asset_type: post.asset_type,
      asset_url: post.asset_url
    }
  end  
end