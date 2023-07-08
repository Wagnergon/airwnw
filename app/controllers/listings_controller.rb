class ListingsController < ApplicationController
    def index
      @listings = Listing.all
  
      respond_to do |format|
        format.html
        format.turbo_stream
      end
    end

    def show
      @listing = Listing.find_by(id: params[:id])
      if @listing
        # Listing found
      else
        # Listing not found, handle error (e.g., redirect or display a message)
      end
    end
    
    
    def create
      @listing = Listing.new(listing_params)
  
      if @listing.save
        respond_to do |format|
          format.html { redirect_to listings_path }
          format.turbo_stream { render turbo_stream: turbo_stream.append(@listing, partial: 'listing', locals: { listing: @listing }) }
        end
      else
        # Handle validation errors
        respond_to do |format|
          format.html { render :new }
          format.turbo_stream { render turbo_stream: turbo_stream.replace('new_listing', partial: 'form', locals: { listing: @listing }) }
        end
      end
    end
  
  
    private
  
    def listing_params
        params.require(:listing).permit(:name, :guests, :beds, :baths, :price, :image)
      end
      
  end
  
  
  