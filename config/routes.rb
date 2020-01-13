Plaintext::Rails::Engine.routes.draw do
  post 'authenticate/start'
  post 'authenticate/confirm_second_factor'
  post 'authenticate/finalize'
  post 'authenticate/generate_second_factor'
  post 'register/start'
  post 'register/finalize'
end
