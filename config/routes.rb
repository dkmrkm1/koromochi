Rails.application.routes.draw do
  # login
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  # users
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users/index' => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/edit" => "users#edit"
  post "users/:id/update" => "users#update"

  # posts
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show" , as: "posts"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  # updateアクションはフォームの値を受け取るので、ルーティングはpost
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get '/' => "home#top"
  get 'about' => "home#about"
end
