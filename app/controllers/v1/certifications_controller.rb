class V1::CertificationsController < ApplicationController
    def index
        certifications = Certification.all
        render json: { certifications: certifications }, status: :ok
    end

    def create
        certification = Certification.new(certification_params)

    if certification.save
        render json:certification, status: :created
    else
        render json: {errors: certification.errors}, status: :unprocessable_entity
    end
    end

    def show
        certification = Certification.find(params[:id])
        render json: certification, status: :ok
    end  

    def update
        certification = Certification.find(params[:id])
    if certification.update(certification_params)
        render json: certification, status: :ok
    else
        render json: { errors: certification.errors }, status: :unprocessable_entity
    end
    end

    def destroy
        certification = Certification.find(params[:id])
        certification.destroy
        head 204
    end

    private
    
    def certification_params
        params.require(:certification).permit(:image, :name, :organization, :organizationImage, :date, :kind)
    end
end
