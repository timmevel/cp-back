class PotsController < ApplicationController
  before_action :set_pot, only: [:show, :edit, :update, :destroy, :donate_cash, :donate_credit]


  # On saute une etape de securite si on appel en JSON
  skip_before_action :verify_authenticity_token, only: [:new, :create, :show, :edit, :update, :destroy, :donate_cash, :donate_credit]
  

  # GET /pots
  # GET /pots.json
  def index
    @pots = Pot.all
  end

  # GET /pots/1
  # GET /pots/1.json
  def show
  end

  # GET /pots/new
  def new
    @pot = Pot.new
  end

  # GET /pots/1/edit
  def edit
  end

  # POST /pots
  # POST /pots.json
  def create
    @pot = Pot.new(pot_params)

    respond_to do |format|
      if @pot.save
        format.html { redirect_to @pot, notice: 'Pot was successfully created.' }
        format.json { render :show, status: :created, location: @pot }
      else
        format.html { render :new }
        format.json { render json: @pot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pots/1
  # PATCH/PUT /pots/1.json
  def update
    respond_to do |format|
      if @pot.update(pot_params)
        format.html { redirect_to @pot, notice: 'Pot was successfully updated.' }
        format.json { render :show, status: :ok, location: @pot }
      else
        format.html { render :edit }
        format.json { render json: @pot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pots/1
  # DELETE /pots/1.json
  def destroy
    @pot.destroy
    respond_to do |format|
      format.html { redirect_to pots_url, notice: 'Pot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # This method allows a user to donate cash to a pot
  def donate_cash
      @donation_cash = DonationCash.new(donation_cash_params)
      @donation_cash.pot = @pot
      @pot.cash_collected = @pot.cash_collected + @donation_cash.amount

      respond_to do |format|
        if @donation_cash.save && @pot.save
          format.json
        else
          format.json { render json: @donation_cash.errors, status: :unprocessable_entity }
        end
      end
  end

  # This method allows a user to donate a credit to a pot
  def donate_credit
      @donation_credit = DonationCredit.new(donation_credit_params)
      @donation_credit.pot = @pot
      @pot.credits_collected = @pot.credits_collected + @donation_credit.quantity

      respond_to do |format|
        if @donation_credit.save && @pot.save
          format.json
        else
          format.json { render json: @donation_credit.errors, status: :unprocessable_entity }
        end
      end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pot
      @pot = Pot.find(params[:id])
    end

    # Here we recognize the person logged in and sending the donation
    def donation_cash_params
      params.require(:donation_cash).permit(:sender_id, :amount)
    end

    # Here we recognize the person logged in and sending the donation
    def donation_credit_params
      params.require(:donation_credit).permit(:sender_id, :quantity)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pot_params
      params.require(:pot).permit(:user_id, :description, :cash_demand, :cash_collected, :credits_collected)
    end


end
