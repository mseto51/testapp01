class Tweet < ApplicationRecord
  belongs_to :user # 追加
  has_many :favorites  # 追加
  
  # 追加
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
