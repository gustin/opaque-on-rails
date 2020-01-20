class Plaintext::Rails::WebauthnController < ApplicationController
  def registration_challenge
    params = JSON.parse(request.raw_post)
    puts params

    challenge = Plaintext::WebAuthn::registration_challenge(
      params["username"]
    )
    puts challenge
    render json: { challenge: challenge }
  end

  def register_credential
    params = JSON.parse(request.raw_post)
    puts params

    validity = Plaintext::WebAuthn::register_credential(
      params["username"],
      params["credential"]
    )
    puts validity
    render json: { valid: validity }
  end
end
