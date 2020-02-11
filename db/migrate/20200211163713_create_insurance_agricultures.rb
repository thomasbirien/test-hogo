class CreateInsuranceAgricultures < ActiveRecord::Migration[6.0]
  def change
    create_table :insurance_agricultures do |t|
      t.text :kind_of_cultures, array: true, default: []
      t.boolean :drought_zone, default: false
    end
  end
end
