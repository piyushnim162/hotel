class AddFildToHotelOwners < ActiveRecord::Migration[6.1]
  def change
    add_column :hotel_owners, :first_name, :string
    add_column :hotel_owners, :last_name,  :string
    add_column :hotel_owners, :mobile_no,  :string
    add_column :hotel_owners, :active, :boolean, default: false
  end
end
