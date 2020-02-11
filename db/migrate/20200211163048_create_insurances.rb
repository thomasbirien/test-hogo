class CreateInsurances < ActiveRecord::Migration[6.0]
  def change
    create_table :insurances do |t|
      t.string :email_buyer
      t.string :social_reason
      t.string :siret
      t.string :siren
      t.string :naf
      t.integer :max_price
      t.integer :annual_revenue
      t.string :tel
      t.text :description
      t.string :state
    end
  end
end
