class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :destroy]

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  def new
    @experience = Experience.new(experience_params)
  end

  def index
    @experiences = Experience.all
  end

  def show
    # @experience = Experience.find(params[:id])
  end

  def destroy
    # @experience = Experience.find(params[:id])
    experience.destroy
    redirect_to experiences_path
  end

  private

  def experience_params
    params.require(:experience).permit(:price_per_hour, :city, :description, :category, :availability, :user_id)
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
