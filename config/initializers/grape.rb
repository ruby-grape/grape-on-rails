module Grape
  module Middleware
    class Formatter < Base
      alias_method :_read_body_input, :read_body_input
      def read_body_input
        env['rack.input'].rewind if env['rack.input']
        _read_body_input
      end
    end
  end
end
