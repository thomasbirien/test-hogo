class Insurance < ApplicationRecord
  has_one :insurance_immovable, dependent: :destroy
  accepts_nested_attributes_for :insurance_immovable
  has_one :insurance_agriculture, dependent: :destroy
  accepts_nested_attributes_for :insurance_agriculture
  has_one :insurance_automotive, dependent: :destroy
  accepts_nested_attributes_for :insurance_automotive
end
