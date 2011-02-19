Goaldigr::Application.routes.draw do
  resources :acts

  resources :missions

  resources :goals

  root :to => "missions#index"

  # See how all your routes lay out with "rake routes"
end
