class DonationsController < ApplicationController
  def index
  	@donation_cashes = DonationCash.all
  	@donation_materials = DonationMaterial.all
  	@donation_credits = DonationCredit.all
  end
end