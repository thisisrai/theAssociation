Rails.application.routes.draw do
  get "players" => "players#index"
  get "players/new" => "players#new"
  post "players" => "players#create"
  get "players/:id" => "players#show"
  get "players/:id/edit" => "players#edit"
  patch "players/:id" => "players#patch"
  delete "players/:id" => "players#delete"
end
