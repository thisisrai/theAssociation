Rails.application.routes.draw do
  get "players" => "players#index"
  get "players/new" => "players#new"
end
