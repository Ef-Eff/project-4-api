Rails.application.routes.draw do


  scope :api do
    resources :comments
    resources :subtitles
    resources :topics, except: [:create, :update, :delete]
    resources :users
    resources :votes

    post '/register', to: 'authentications#register'
    post '/login', to: 'authentications#login'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
