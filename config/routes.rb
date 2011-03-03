Goaldigr::Application.routes.draw do
  resources :session, :controller => 'sessions', :only => [:new, :create]
  get 'sign_up' => 'clearance/users#new', :as => :sign_up
  get 'sign_in' => 'clearance/sessions#new', :as => :sign_in
  get 'sign_out' => 'clearance/sessions#destroy', :as => :sign_out

  resources :acts

  resources :missions

  resources :categories

  root :to => "missions#index"

  # See how all your routes lay out with "rake routes"
end
