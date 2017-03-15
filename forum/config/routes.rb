Rails.application.routes.draw do
  devise_for :users

  resources :forum_threads do
  	# nested route inside forum_threads - keeps it neater
  	resources :forum_posts 
  	# you can add a module option above too - module :forum_threads
  	# this is useful if you're running a forum inside of a larger application. 
	end
end
