class CreateInsuranceImmovables < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_immovables do |t|
      t.float :building_height
      t.integer :number_of_floors
    end
  end
end
