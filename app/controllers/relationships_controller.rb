class RelationshipsController < ApplicationController

  def create
    relationships = Relationship.new(follower_id: current_user.id)
    # binding.pry
    # a = '123'
    relationships.followed_id = User.find(params[:user_id])
    relationships.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    relationships = Relationship.find_by(followed_user: params[:id], follower_user: current_user)
    relationships.destroy
    redirect_back(fallback_location: root_path)
  end

end
