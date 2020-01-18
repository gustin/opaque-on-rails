class Plaintext::WebAuthNController < ApplicationController
  def registration_challenge
    params = JSON.parse(request.raw_post)
    puts params

    challenge = Plaintext::WebAuthn::registration_challenge(
      params["username"]
    )
    puts challenge
    render json: { challenge: challenge }
  end
end
