Rails.application.routes.draw do
  devise_for :users

  resources :users, only: %i[new create edit update]
  root "home#index"

  post 'opinion', to: 'opinions#create'
  post 'follow', to: 'followings#create'
  post 'likes/:opinion_id', to: 'likes#create', as: 'likes'
  delete 'like', to: 'likes#destroy'

  get 'users/:username', to: 'users#show', as: 'profile'

   	if Rails.env.production?
    	get '404', :to => 'application#page_not_found'
 	end

end
