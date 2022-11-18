class AddHotelOwnerIntoHotel < ActiveRecord::Migration[6.1]
  def change
    add_column :hotels, :hotel_owner_id, :bigint
  end
end
