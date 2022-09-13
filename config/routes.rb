Rails.application.routes.draw do
  root "welcome#index"
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources "entries"
end
