class PostsController < ApplicationController

  def new
    @post = Post.new
  end
  
  def create
    post = Post.new post_params
    post.user_id = @current_user.id
    if params[:file].present?
      req=Cloudinary::Uploader.upload(params[:file])
      post.image = req["public_id"]
    end
    post.update_attributes(post_params)
    post.save
    redirect_to root_path
  end

  def edit
    @post = Post.find params[:id]
    @post.user_id = @current_user.id
  end

  def update
    post = Post.find params[:id]
    post.user_id = @current_user.id
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      post.image = req["public_id"]
    end
    post.update_attributes(post_params)
    post.save
    redirect_to root_path
  end

  def destroy
    post = Post.find params[:id]
    post.destroy
    redirect_to root_path
  end

  private
  def post_params #strong params
    params.require(:post).permit(:title, :post_text, :image, :video) #asks for params without getting directly from params object
  end
end
