class V1::SlidersController < ApplicationController
  def index
    sliders = Slider.all
    render json: { sliders: sliders }, status: :ok
  end

  def create
    slider = Slider.new(slider_params)

    if slider.save
      render json:slider, status: :created
    else
      render json: {errors: slider.errors}, status: :unprocessable_entity
    end
  end

  def show
    slider = Slider.find(params[:id])
    render json: slider, status: :ok
  end  

  def update
    slider = Slider.find(params[:id])
    if slider.update(slider_params)
      render json: slider, status: :ok
    else
      render json: { errors: slider.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    slider = Slider.find(params[:id])
    slider.destroy
    head 204
  end

  private
  
  def slider_params
    params.require(:slider).permit(:title, :subTitle, :skillList, :sideImgDesktop, :avatarCenterMobile)
  end

end