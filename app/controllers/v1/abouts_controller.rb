class V1::AboutsController < ApplicationController
  def index
    abouts = About.all
    render json: { abouts: abouts }, status: :ok
  end

  def create
    about = About.new(about_params)

    if about.save
      render json:about, status: :created
    else
      render json: {errors: about.errors}, status: :unprocessable_entity
    end
  end

  def show
    about = About.find(params[:id])
    render json: about, status: :ok
  end  

  def update
    about = About.find(params[:id])
    if about.update(about_params)
      render json: about, status: :ok
    else
      render json: { errors: about.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    about = About.find(params[:id])
    about.destroy
    head 204
  end

  private
  
  def about_params
    params.require(:about).permit(:title, :typo, :typoBold, :skillsTypo, :sideAvatar)
  end

end