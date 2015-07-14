class PostsController < ApplicationController

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

  private

    def post_params
      params.require(:post).permit(:content)
    end
end