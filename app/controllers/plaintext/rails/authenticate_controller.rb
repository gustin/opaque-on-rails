class Plaintext::Rails::AuthenticateController < ApplicationController
  def start
    puts '===> Authentication Start'
    params = JSON.parse(request.raw_post)
    puts params
    beta, v, envelope, key, y = Plaintext::Authentication::start(params["username"], params["alpha"], params["key"])

    puts "Key: #{key}"

    render json: { beta: beta, v: v, envelope: envelope, key: key, y: y }
  end

  def finalize
    puts '===> Authentication Login'
    params = JSON.parse(request.raw_post)
    puts params
    Plaintext::Authentication::finalize(params["username"], params["key"], params["x"])

    # return Plaintext::Paseto Session Token, store in database, etc
    render json: { logged: 'in' }
  end
end
