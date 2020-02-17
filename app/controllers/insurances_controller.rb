class InsurancesController < ApplicationController

  def choose_kind_of_quote
  end

  def index
    @insurances = Insurance.all
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
    if params[:insurance][:insurance_agriculture_attributes].present?
      params[:insurance][:insurance_agriculture_attributes][:kind_of_cultures] = params[:insurance][:insurance_agriculture_attributes][:kind_of_cultures].split(", ")
    end
    @insurance = Insurance.new(params_insurance)
    if @insurance.save
      redirect_to insurances_path
    else
      render :new
    end
  end

  def edit
    @insurance = Insurance.find(params[:id])

    if @insurance.insurance_agriculture.present?

      @agri = true
    elsif @insurance.insurance_immovable.present?
      @immo = true
    elsif @insurance.insurance_automotive.present?
      @auto = true
    end
  end

  def update
    @insurance = Insurance.find(params[:id])
    if params[:insurance][:insurance_agriculture_attributes].present?
      params[:insurance][:insurance_agriculture_attributes][:kind_of_cultures] = params[:insurance][:insurance_agriculture_attributes][:kind_of_cultures].split(", ")
    end

    if @insurance.update_attributes(params_insurance)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @insurance = Insurance.find(params[:id])
    if @insurance.destroy
      redirect_to root_path
    else
      redirect_to root_path
      # we need to send a flash message to say sorry something is wrong or something like that.
    end
  end

  private

  def params_insurance
    params.require(:insurance).permit(
      :email_buyer,
      :social_reason,
      :siret,
      :siren,
      :naf,
      :max_price,
      :annual_revenue,
      :tel,
      :description,
      :state,
      insurance_immovable_attributes: [
              :id,
              :building_height,
              :number_of_floors,
              ],
      insurance_automotive_attributes: [
              :id,
              :driver_licence_points,
              :car_model,
              :registration_number
              ],
      insurance_agriculture_attributes: [
              :id,
              :drought_zone,
              :kind_of_cultures => []
              ],
      )
  end
end
