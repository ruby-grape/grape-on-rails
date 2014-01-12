GrapeOnRails::Application.routes.draw do
  get 'welcome/index'
  mount API => '/'
  root 'welcome#index'
end
