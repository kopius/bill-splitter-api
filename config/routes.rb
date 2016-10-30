Rails.application.routes.draw do
  resources :bills, except: [:new, :edit] do
    resources :shares, only: [:index, :create]
  end
  resources :shares, only: [:show, :update, :destroy]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
