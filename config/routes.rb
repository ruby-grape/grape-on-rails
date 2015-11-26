GrapeOnRails::Application.routes.draw do
  get 'welcome/index'
  mount API => '/'
  root 'welcome#index'
  get '/apidocs' => 'application#apidocs'
end
