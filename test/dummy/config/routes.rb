Rails.application.routes.draw do
  mount Plaintext::Rails::Engine => "/plaintext-rails"
end
