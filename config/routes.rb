Rails.application.routes.draw do
  resources :bills, except: [:new, :edit] do
    resources :shares, only: [:index, :create] do
      resources :adjustments, only: [:index, :create]
    end
  end
  # may want to nest shares#update in bills once Adjustments are added
  # this will also be useful when updating the total cost of a bill
  resources :shares, only: [:show, :update, :destroy]
  resources :adjustments, only: [:show, :update, :destroy]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
