class RelationshipsController < ApplicationController

  def create
    relationships = Relationships.new(follower_user: current_user.id)
    relationships.followed_user = User.find(params[:id])
    relationships.save
  end

  def destroy
    relationships = Relationships.find_by(followed_user: params[:id], follower_user: current_user)
    relationships.destroy
  end

end
