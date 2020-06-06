Rails.application.routes.draw do
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root to: 'static_pages#root'
	devise_for :users, defaults: {format: :json}, controllers: { omniauth_callbacks: "users/omniauth_callbacks"}
	
	namespace :api, defaults: { format: :json} do
		resources :users, only: [:create, :show, :destroy, :update]
		resource :session, only: [:create, :destroy]
    resources :stores, only: [:show, :index]
    resources :carts, only: [:show, :update, :destroy]
	end

	
	
end
