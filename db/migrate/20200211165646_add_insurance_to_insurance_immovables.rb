class AddInsuranceToInsuranceImmovables < ActiveRecord::Migration[6.0]
  def change
    add_reference :insurance_immovables, :insurance
  end
end
