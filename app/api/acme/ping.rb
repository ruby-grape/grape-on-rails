module Acme
  class Ping < Grape::API
    format :json
    desc "Returns pong."
    get :ping do
      { :ping => "pong" }
    end
  end
end
