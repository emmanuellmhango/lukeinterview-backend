class CreateFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :facilities do |t|
      t.string :facility_code
      t.string :facility_name
      t.string :district_id
      t.string :owner_id

      t.timestamps
    end
  end
end
