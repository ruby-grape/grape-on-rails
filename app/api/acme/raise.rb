module Acme
  class Raise < Grape::API
    desc 'Raises an exception.'
    get :raise do
      fail 'Unexpected error.'
    end
  end
end
