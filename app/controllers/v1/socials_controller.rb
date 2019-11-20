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

  def show
    social = Social.find(params[:id])
    render json: social, status: :ok
  end  

  def update
    social = Social.find(params[:id])
    if social.update(social_params)
      render json: social, status: :ok
    else
      render json: { errors: social.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    social = Social.find(params[:id])
    social.destroy
    head 204
  end

  private
  
  def social_params
    params.require(:social).permit(:linkedin, :twitter, :github, :hackerrank)
  end

end