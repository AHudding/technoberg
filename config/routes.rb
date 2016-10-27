Rails.application.routes.draw do
  resources :educations
  resources :jobs

  root 'welcome#index'
  post 'jobs/create' => "jobs#create", as: :create

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
