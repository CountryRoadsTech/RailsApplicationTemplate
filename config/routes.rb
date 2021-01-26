# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  # Adds the routes for user authentication.
  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }

  resources :pages # Used to display rich text editor generated pages.
  root to: 'pages#index' # Sets the homepage of the website (e.g. /) to page's index action.
  get '/:id' => 'pages#show' # This must be the last line of this method to avoid accidentally overriding other routes.
end
