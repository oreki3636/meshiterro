Rails.application.routes.draw do
  devise_for :views
  devise_for :users

  resources:post_images,only: [:new,:index,:show]

  root to:'homes#top'
  get "/homes/about"=>"homes#about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
