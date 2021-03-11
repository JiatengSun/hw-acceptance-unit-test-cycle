Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  match '/movies/:id/similar(.:format)', to: 'movies#same', as: 'same_movie', via: :get
  root :to => redirect('/movies')
end