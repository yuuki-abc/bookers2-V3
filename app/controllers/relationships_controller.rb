class RelationshipsController < ApplicationController
  
  # 要検証 多重登録の防止
  # 要検証 自分がフォロー
  def create
    relationships = Relationship.new(follower: current_user)
    relationships.followed = User.find(params[:user_id])
    relationships.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    user = User.find(params[:user_id])# 質問 なぜparams[:id]じゃとれないのか？
    relationships = Relationship.find_by(followed: user, follower: current_user)
    if relationships
      relationships.destroy
      redirect_back(fallback_location: root_path)
    else
      redirect_back(fallback_location: root_path)
      # すでに空です 要検証
    end
  end

end
