Rails.application.routes.draw do
  # users
  get "signup" => "users#new"
  get 'users/index' => "users#index"
  get "users/:id" => "users#show"

  # posts
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  # updateアクションはフォームの値を受け取るので、ルーティングはpost
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => "home#top"
  get 'about' => "home#about"
end
