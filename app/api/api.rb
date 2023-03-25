class API < Grape::API
  prefix 'api'
  format :json
  mount Acme::Ping
  mount Acme::Raise
  mount Acme::Protected
  mount Acme::Post
  mount Acme::Headers
  add_swagger_documentation info: { title: 'grape-on-rails' }
end
