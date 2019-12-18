class Plaintext::Rails::RegisterController < ApplicationController
  def start
    puts '====> Regsistration Start'
    params = JSON.parse(request.raw_post)
    puts params
    beta, v, pub_s = Plaintext::Registration::start(params["username"], params["alpha"])
    puts "******************************"
    puts  "Beta: #{beta}"

    render json: { beta: beta, v: v, pub_s: pub_s }
  end

  def finalize
    puts '====> Registration Final'
    params = JSON.parse(request.raw_post)
    puts params
    Plaintext::Registration::finalize(params["username"], params["pub_u"], params["auth_env"])

    render json: { registration: "success" }
  end
end
