class AddInsuranceToInsuranceAgricultures < ActiveRecord::Migration[6.0]
  def change
    add_reference :insurance_agricultures, :insurance
  end
end
