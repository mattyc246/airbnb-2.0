class ListingsController < ApplicationController

  def index

  end

  def show

  end

  def new

  end

  def create

    listing = Listing.new(listing_params)

    if listing.save

      flash[:success] = "You have successfully created the listing #{listing.title}!"
      redirect_to listing_path(listing.id)

    else

      flash[:danger] = "Unable to create the listing! Check all fields have been correctly filled out!"
      redirect_to new_listing_path

    end

  end

  def update

  end

  def destroy

  end

  private

    def listing_params

      params.require(:listing).permit(:title, :property_type, :guests, :bedrooms, :bathrooms, :price_per_night, :address_line1, :city, :state, :country, :postcode,)

    end


end
