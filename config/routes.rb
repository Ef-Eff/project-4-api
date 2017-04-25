Rails.application.routes.draw do

  scope :api do
    resources :comments
    resources :subtitles
    resources :topics, except: [:create, :update, :delete]
    resources :users
    resources :votes, except: [:show, :index]
    resources :pms, except: [:update, :delete, :index]
    resources :messages

    post '/register', to: 'authentications#register'
    post '/login', to: 'authentications#login'
    get '/tweets', to: 'tweets#tweets'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
