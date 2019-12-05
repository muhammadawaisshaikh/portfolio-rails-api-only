class V1::EducationsController < ApplicationController
    def index
      educations = Education.all
      render json: { educations: educations }, status: :ok
    end
  
    def create
        education = Education.new(education_params)
  
      if education.save
        render json:education, status: :created
      else
        render json: {errors: education.errors}, status: :unprocessable_entity
      end
    end
  
    def show
        education = Education.find(params[:id])
      render json: education, status: :ok
    end  
  
    def update
        education = Education.find(params[:id])
      if education.update(education_params)
        render json: education, status: :ok
      else
        render json: { errors: education.errors }, status: :unprocessable_entity
      end
    end
  
    def destroy
        education = Education.find(params[:id])
      education.destroy
      head 204
    end
  
    private
    
    def education_params
      params.require(:education).permit(:image, :university, :degree, :tenure)
    end
  
  end