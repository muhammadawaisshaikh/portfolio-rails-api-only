class V1::SocialsController < ApplicationController
  def index
    socials = Social.all
    render json: { socials: socials }, status: :ok
  end

  def create
    social = Social.new(social_params)

    if social.save
      render json:social, status: :created
    else
      render json: {errors: social.errors}, status: :unprocessable_entity
    end
  end

  private
  
  def social_params
    params.require(:social).permit(:linkedin, :twitter, :github)
  end

end