class AddInsuranceToInsuranceAutomotives < ActiveRecord::Migration[6.0]
  def change
    add_reference :insurance_automotives, :insurance
  end
end
