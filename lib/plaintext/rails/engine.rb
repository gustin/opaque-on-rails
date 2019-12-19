require 'plaintext'

module Plaintext
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Plaintext::Rails
      initializer "engine.add_middleware" do |app|
        app.middleware.use Rack::Cors
        app.middleware.insert_before 0, Rack::Cors do
          allow do
            origins '*'
            resource '*', headers: :any, methods: [:get, :post, :options]
          end
        end
      end
    end
  end
end
