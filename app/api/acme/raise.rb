module Acme
  class Raise < Grape::API
    desc "Raises an exception."
    get :raise do
      raise "Unexpected error."
    end
  end
end
