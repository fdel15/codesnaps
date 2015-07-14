class PostsController < ApplicationController

  before_action :set_post, only: [:edit]

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      respond_to do |format|
        format.html { redirect_to user_path(@post.user.username), notice: "Post Created" }
      end
    end
  end

  def edit
  end

  def update
    @post.udpate(post_params)
    respond_to do |format|
      format.html { redirect_to user_path(@post.user.username), notice: "Post Updated" }
    end
  end


  private

    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:content)
    end
end