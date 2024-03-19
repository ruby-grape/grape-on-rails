Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  mount API => '/'
end
