Rails.application.routes.draw do
  root "welcome#index"
  get 'welcome/index'
  
  resources "entries"
  #get "/entries/:test", to: "entries#show"
end
