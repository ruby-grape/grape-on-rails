require 'grape-swagger'

class API < Grape::API
  prefix 'api'
  format :json
  mount Acme::Ping
  mount Acme::Raise
  mount Acme::Protected
  mount Acme::Post
  # add_swagger_documentation
  add_swagger_documentation base_path: "/api/swagger_doc",
                            hide_documentation_path: true
end
