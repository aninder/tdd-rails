Rails.application.routes.draw do
  # match ':controller(/:action(/:id))', :via=>:get
  resources :competitions
end
