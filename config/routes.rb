Rails.application.routes.draw do
  resources :locations, except: [:delete, :edit, :update] 

  root 'locations#index'
end
