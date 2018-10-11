Rails.application.routes.draw do
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"

  get '/' => "home#top"
  get 'about' => "home#about"
end
