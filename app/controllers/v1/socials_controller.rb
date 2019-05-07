class V1::SocialsController < ApplicationController
  def index
    socials = Social.all
    render json: { socials: socials }, status: :ok
  end
end