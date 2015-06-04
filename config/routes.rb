GrapeOnRails::Application.routes.draw do
  get 'welcome/index'
  mount API => '/'
  root 'welcome#index'
  mount GrapeSwaggerRails::Engine => '/documentation'
end
