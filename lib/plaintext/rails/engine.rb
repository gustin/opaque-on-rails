module Plaintext
  module Rails
    class Engine < ::Rails::Engine
      isolate_namespace Plaintext::Rails
    end
  end
end
