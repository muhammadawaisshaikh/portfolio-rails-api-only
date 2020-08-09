class V1::ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: { projects: projects }, status: :ok
  end

  def create
    project = Project.new(project_params)

    if project.save
      render json:project, status: :created
    else
      render json: {errors: project.errors}, status: :unprocessable_entity
    end
  end

  def show
    project = Project.find(params[:id])
    render json: project, status: :ok
  end  

  def update
    project = Project.find(params[:id])
    if project.update(project_params)
      render json: project, status: :ok
    else
      render json: { errors: project.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    head 204
  end

  private
  
  def project_params
    params.require(:project).permit(:imgUrl, :name, :associationWith, :role, :site_url)
  end

end