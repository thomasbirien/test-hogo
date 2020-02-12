class InsurancesController < ApplicationController

  def choose_kind_of_quote
  end

  def index
  end

  def new
    @insurance = Insurance.new
    if params[:radio] == "auto_insu"
      @insurance.build_insurance_automotive
      @auto = true
    elsif params[:radio] == "agri_insu"
      @insurance.build_insurance_agriculture
      @agri = true
    elsif params[:radio] == "immo_insu"
      @insurance.build_insurance_immovable
      @immo = true
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
