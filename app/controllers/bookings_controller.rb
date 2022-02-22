class BookingsController < ApplicationController

  before_action :set_booking, only: [ :show, :edit, :update, :destroy]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    # @booking.experience = record  => association du experience au booking
    # @booking.user = current_user => association du user à au booking
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def show
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
