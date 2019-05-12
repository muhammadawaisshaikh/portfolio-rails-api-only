class V1::SkillsController < ApplicationController
  def index
    skills = Skill.all
    render json: { skills: skills }, status: :ok
  end

  def create
    skill = Skill.new(skill_params)

    if skill.save
      render json:skill, status: :created
    else
      render json: {errors: skill.errors}, status: :unprocessable_entity
    end
  end

  def show
    skill = Skill.find(params[:id])
    render json: skill, status: :ok
  end  

  def update
    skill = Skill.find(params[:id])
    if skill.update(skill_params)
      render json: skill, status: :ok
    else
      render json: { errors: skill.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    skill = Skill.find(params[:id])
    skill.destroy
    head 204
  end

  private
  
  def skill_params
    params.require(:skill).permit(:imgUrl)
  end

end