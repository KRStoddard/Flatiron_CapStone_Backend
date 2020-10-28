class ApplicationController < ActionController::API
     before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, 'RoseandTheDoctorInTheTARDIS')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'RoseandTheDoctorInTheTARDIS', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def logged_in_user
    if decoded_token
      band_id = decoded_token[0]['band_id']
      band = Band.find_by(id: band_id)
    end
  end

  def logged_in?
    !!logged_in_user
  end

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

end
