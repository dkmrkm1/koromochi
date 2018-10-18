Rails.application.routes.draw do
  get 'users/index'
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
