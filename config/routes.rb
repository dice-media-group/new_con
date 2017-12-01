Rails.application.routes.draw do
	get 'pages/home' => 'high_voltage/pages#show', 		id: 'home'
	get 'pages/about' => 'high_voltage/pages#show', 	id: 'about'

	resources :contacts, only: [:new, :create]
end
