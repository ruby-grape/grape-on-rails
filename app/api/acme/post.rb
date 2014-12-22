module Acme
  class Post < Grape::API
    desc 'Creates a spline that can be reticulated.'
    resource :spline do
      post do
        { reticulated: params[:reticulated] }
      end
    end
  end
end
