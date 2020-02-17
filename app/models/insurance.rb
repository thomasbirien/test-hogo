class Insurance < ApplicationRecord
  has_one :insurance_immovable
  accepts_nested_attributes_for :insurance_immovable
  has_one :insurance_agriculture
  accepts_nested_attributes_for :insurance_agriculture
  has_one :insurance_automotive
  accepts_nested_attributes_for :insurance_automotive
end
