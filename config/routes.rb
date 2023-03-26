Rails.application.routes.draw do


  namespace :admin do
    get 'samples' => 'samples#show'
    resources :letters, only: [:index,:show,:edit,:create,:update,:destroy]
  end

  scope module: 'public' do
    #homes
    get root to: "homes#top"
    get 'about' => 'homes#about', as: :about
    # favorites
    post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
    delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
    get 'favorites' => 'favorites#index'
    #samples
    #get 'samples'=> 'samples#show'
    #users
    get 'users/my_page' => 'users#show'
    get 'users/information_edit' => 'users#edit'
    patch '/users/information' => 'users#update'
    get 'users/unsubscribe' => 'users#confirm'
    patch '/users/withdraw' => 'users#withdrawal'
    post "post_image" => "practices#image"

    #その他
    resources :samples , only: [:index, :show,:create] do
      resources :practices, only: [:new]
    end

    # resources :favorites, only: [:index,:create,:destroy]

    resources :practices, only: [:index,:create,:destroy]
    #不要になったのでコメントアウト　resources :users, only: [:show,:edit,:update]


  end


  # ユーザー用
  # URL /customers/sign_in ...
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions',
    passwords: "public/passwords"
  }

  #ゲストログインのため追加
  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

