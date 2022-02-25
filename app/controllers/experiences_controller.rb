class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :destroy, :edit, :update]

  def create
    @experience = Experience.new(experience_params)
    @experience.user = current_user
    authorize @experience
    if @experience.save
      redirect_to experiences_path(@experiences), notice: "experience created!"
    else
      render :new
    end
  end

  def new
    @user = current_user
    @experience = Experience.new
    authorize @experience
  end

  def index
    @user = current_user
    @experiences = policy_scope(Experience)
    @experiences = @experiences.where(category: params[:category]) if params[:category]
  end

  def show
    authorize @experience
    @booking = Booking.new
    authorize @booking
  end

  def destroy
    authorize @experience
    @experience.destroy
    redirect_to experiences_path
  end

  def edit
    authorize @experience
  end

  def update
    authorize @experience
    @experience.update(experience_params)
    redirect_to experience_path(@experience)
  end

  private

  def experience_params
    params.require(:experience).permit(:price_per_hour, :city, :description, :category, :availability, :user_id)
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end
end
