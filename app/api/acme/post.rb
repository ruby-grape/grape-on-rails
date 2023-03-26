module Acme
  class Post < Grape::API
    desc 'Creates a spline that can be reticulated.'
    params do
      optional :reticulated, type: Boolean, documentation: { param_type: 'body' }
    end
    resource :spline do
      post do
        { reticulated: params[:reticulated] }
      end
    end
  end
end
