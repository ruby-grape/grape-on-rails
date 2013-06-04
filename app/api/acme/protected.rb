module Acme
  class Protected < Grape::API
    format :json
    http_basic do |username, password|
      username == "username" && password == "password"
    end
    resource :protected do
      desc "Returns pong if username=username and password=password."
      get :ping do
        { :ping => "pong" }
      end
    end
  end
end
