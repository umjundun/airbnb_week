Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    authenticated  do
      root to: 'pages#home'
    end

    unauthenticated do
      root to: 'devise/registrations#new'
    end
  end
  # root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
