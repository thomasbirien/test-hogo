class CreateInsuranceAutomotives < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_automotives do |t|
      t.integer :driver_licence_points
      t.string :car_model
      t.string :registration_number
    end
  end
end
