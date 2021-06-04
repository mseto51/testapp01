Rails.application.routes.draw do

  #==================コメントアウト================
  # get 'favorites/create'
  # get 'favorites/destroy'
  #=====================================
root 'tweets#index' #　追加
devise_for :users

# ===== ここはいらないのでコメントアウト =====
  #get 'tweets/new'
  #get 'tweets/index'
  #get 'tweets/show'
  #get 'tweets/create'
  #get 'users/index'
  #get 'users/show'
# =========================================

  # ================ここをネスト(入れ子)した形に変更
  resources :tweets do  # 追加
    resource :favorites, only: [:create, :destroy]
  end
  #======================================
  resources :users  # 追加
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
