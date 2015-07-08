class FriendshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @friendship = current_user.request_friendship(@user)
    respond_to do |format|
      format.html { redirect_to users_path, notice: "Friendship Created"}
    end
  end

end