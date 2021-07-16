class Favorite < ApplicationRecord
  belongs_to :user  #追加
  belongs_to :tweet  #追加
end
