class V1::TechTalksController < ApplicationController
    def index
        techtalks = TechTalk.all
        render json: { techtalks: techtalks }, status: :ok
      end
    
      def create
        techtalk = TechTalk.new(techtalk_params)
    
        if techtalk.save
          render json:techtalk, status: :created
        else
          render json: {errors: techtalk.errors}, status: :unprocessable_entity
        end
      end
    
      def show
        techtalk = TechTalk.find(params[:id])
        render json: techtalk, status: :ok
      end  
    
      def update
        techtalk = TechTalk.find(params[:id])
        if techtalk.update(techtalk_params)
          render json: techtalk, status: :ok
        else
          render json: { errors: techtalk.errors }, status: :unprocessable_entity
        end
      end
    
      def destroy
        techtalk = TechTalk.find(params[:id])
        techtalk.destroy
        head 204
      end
    
      private
      
      def techtalk_params
        params.require(:techtalk).permit(:imgUrl)
      end
end
