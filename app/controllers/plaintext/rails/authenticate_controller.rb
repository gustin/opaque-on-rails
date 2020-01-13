class Plaintext::Rails::AuthenticateController < ApplicationController
  def start
    puts '===> Authentication Start'
    params = JSON.parse(request.raw_post)
    puts params
    beta, v, envelope, key, y = Plaintext::Authentication::start(
        params["username"], params["alpha"], params["key"]
    )

    puts "Key: #{key}"

    render json: { beta: beta, v: v, envelope: envelope, key: key, y: y }
  end

  def confirm_second_factor
    params = JSON.parse(request.raw_post)
    puts params
    confirmed = Plaintext::Authenticator::confirm_second_factor(
      params["username"], params["code"]
    )
    puts confirmed
    render json: { confirmed: confirmed }
  end

  def generate_second_factor
    params = JSON.parse(request.raw_post)
    puts params
    challenge = Plaintext::Authenticator::generate_second_factor(
      params["username"]
    )
    render json: { qr_code: challenge }
  end

  def finalize
    puts '===> Authentication Login'
    params = JSON.parse(request.raw_post)
    puts params
    token =
      Plaintext::Authentication::finalize(
        params["username"], params["key"], params["x"]
    )
    render json: { token: token }
  end
end
