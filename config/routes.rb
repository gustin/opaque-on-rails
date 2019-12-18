Plaintext::Rails::Engine.routes.draw do
  post 'authenticate/start'
  post 'authenticate/finalize'
  post 'register/start'
  post 'register/finalize'
end
