Rails.application.routes.draw do

  namespace :admin do
    get 'samples' => 'samples#show'
    resources :letters, only: [:index,:edit,:create,:update,:destroy]
  end

  namespace :public do
    get root to: "homes#top"
    get 'about' => 'homes#about', as: :about
    get 'samples'=> 'samples#show'
    resources :favoriites, only: [:index,:create,:destroy]
    resources :practices, only: [:show,:index,:create,:destroy]
    resources :users, only: [:show,:edit,:update]
  end


  # ユーザー用
  # URL /customers/sign_in ...
  devise_for :users, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions',
    passwords: "public/passwords"
  }

  # 管理者用
  # URL /admin/sign_in ...
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
