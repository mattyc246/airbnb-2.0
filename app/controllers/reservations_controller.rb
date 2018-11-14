class ReservationsController < ApplicationController

  def new

  end

  def create

    reservation = Reservation.new(reservation_params)

    if reservations.save

      flash[:success] = "You have successfully created a new reservation!"
      redirect_to user_path(current_user.id)

    else

      flash[:danger] = "Unable to make a booking! If problems persist please contact the admin!"
      redirect_to new_reservation_path

    end

  end

  def show

  end

  def update

  end

  def destroy

  end

  private

    def reservation_params

      params.require(:reservation).permit(:check_in, :check_out, :listing_id)

    end 
    
end
