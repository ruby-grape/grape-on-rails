class API < Grape::API
  prefix 'api'
  mount Acme::Ping
  mount Acme::Raise
  mount Acme::Protected
end
