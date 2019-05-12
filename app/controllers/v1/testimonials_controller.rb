class V1::TestimonialsController < ApplicationController
  def index
    testimonials = Testimonial.all
    render json: { testimonials: testimonials }, status: :ok
  end

  def create
    testimonial = Testimonial.new(testimonial_params)

    if testimonial.save
      render json:testimonial, status: :created
    else
      render json: {errors: testimonial.errors}, status: :unprocessable_entity
    end
  end

  def show
    testimonial = Testimonial.find(params[:id])
    render json: testimonial, status: :ok
  end  

  def update
    testimonial = Testimonial.find(params[:id])
    if testimonial.update(testimonial_params)
      render json: testimonial, status: :ok
    else
      render json: { errors: testimonial.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    testimonial = Testimonial.find(params[:id])
    testimonial.destroy
    head 204
  end

  private
  
  def testimonial_params
    params.require(:testimonial).permit(:imgUrl, :name, :designation, :recommendation)
  end

end