class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :contact_no
      t.boolean :active
      t.timestamps 
    end
  end
end
