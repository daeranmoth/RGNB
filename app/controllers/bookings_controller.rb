class BookingsController < ApplicationController


  before_action :set_booking, only: [ :show, :edit, :update, :destroy]
  def index
    # @bookings = Booking.all
    @bookings = policy_scope(Booking).order(created_at: :desc)
    # authorize @booking
  end

  def new
    # raise
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    # @booking.experience = record  => association du experience au booking
    @experience = Experience.find(params[:experience_id]) # association du experience au booking
    @booking.experience = @experience
    @booking.user = current_user # association du user à au booking
    @booking.save!
    redirect_to experience_booking_path(@experience, @booking)
    authorize @booking
    # authorise @experience
  end

  def show
    authorize @booking
  end

  def edit
  end

  def update
    @booking.update(params[:booking])
    redirect_to booking_path(@booking)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :start_date, :price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
