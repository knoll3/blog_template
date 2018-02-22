class PostsController < ApplicationController
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Successful post."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:success] = "Post deleted"
    redirect_to root_url
  end
  
  private
  
    def post_params
      params.require(:post).permit(:id, :title, :content)
    end
end
