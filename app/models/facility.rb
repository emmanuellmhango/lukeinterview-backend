class Facility < ApplicationRecord
  validates :facility_code, presence: true, uniqueness: true
  validates :facility_name, presence: true
  validates :district_id, presence: true
  validates :owner_id, presence: true
end
