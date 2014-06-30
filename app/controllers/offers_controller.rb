class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  #layout "offer"

  # GET /offers
  def index
    @offers = Offer.all
  end

  # GET /offers/1
  def show
    @offer = Offer.find(params[:id])
    @eachparts = @offer.participants
    @eachtasks = @offer.tasks
  end

  # GET /offers/new
  def new
    @offer = Offer.new
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  def create

  # Instantiate new object using form parameters
    @offer = Offer.new(offer_params)

    # Save the object
    respond_to do |format|

      if @offer.save
      # If save succeeds, redirect to index action

        @offer.crud_participants(offer_params[:max_participants].to_i)

        format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
      else 
      # If save fails, redisplay form so user can fix problems

        format.html { render :new }

      end
    end
  end

  # PATCH/PUT /offers/1
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        @offer.crud_participants(offer_params[:max_participants].to_i)
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /offers/1
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: 'Offer was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offer 
      @offer = Offer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offer_params
      params.require(:offer).permit(:name, :min_participants, :max_participants, :no_products, :start_at, :end_at, :quota)
    end
end
