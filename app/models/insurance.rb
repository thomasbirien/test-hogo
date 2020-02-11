class Insurance < ApplicationRecord
  has_one :insurance_immovable
  has_one :insurance_agriculture
  has_one :insurance_automotive
end
