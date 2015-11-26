# require 'grape-swagger'

class API < Grape::API
  version :v1
  prefix :api
  # prefix 'api'
  format :json
  mount Acme::Ping
  mount Acme::Raise
  mount Acme::Protected
  mount Acme::Post
  # add_swagger_documentation
  add_swagger_documentation base_path: '', api_version: 'v1', mount_path: '/api/docs' unless Rails.env.production?
end
