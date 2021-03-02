class RelationshipsController < ApplicationController

  def create
    relationships = Relationship.new(follower: current_user)
    relationships.followed = User.find(params[:user_id])
    relationships.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    user = User.find(params[:user_id])# 質問 なぜparams[:id]じゃとれないのか？
    relationships = Relationship.find_by(followed: user, follower: current_user)
    relationships.destroy
    redirect_back(fallback_location: root_path)
  end

end
