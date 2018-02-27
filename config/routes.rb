Rails.application.routes.draw do
  root "users#new"
  # get "users/new" => "users#new"
  post "users" => "users#create"
end
