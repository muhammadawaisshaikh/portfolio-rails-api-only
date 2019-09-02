class V1::ExperiencesController < ApplicationController
  def index
    experiences = Experience.all.order(id: :desc)
    render json: { experiences: experiences }, status: :ok
  end

  def create
    experience = Experience.new(experience_params)

    if experience.save
      render json:experience, status: :created
    else
      render json: {errors: experience.errors}, status: :unprocessable_entity
    end
  end

  def show
    experience = Experience.find(params[:id])
    render json: experience, status: :ok
  end  

  def update
    experience = Experience.find(params[:id])
    if experience.update(experience_params)
      render json: experience, status: :ok
    else
      render json: { errors: experience.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    experience = Experience.find(params[:id])
    experience.destroy
    head 204
  end

  private
  
  def experience_params
    params.require(:experience).permit(:avatarUrl, :designation, :organization, :tenure)
  end

end