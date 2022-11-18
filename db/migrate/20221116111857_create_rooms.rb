class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :description
      t.string :room_no
      t.string :room_size
      t.integer :status, default: 0
      t.bigint :hotel_id
      t.timestamps
    end
  end
end
