class API < Grape::API
  prefix 'api'
  format :json
  mount API_v1
  mount API_v2
end
