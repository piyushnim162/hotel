class Room < ApplicationRecord
	self.table_name = :rooms
	belongs_to :hotel
    enum status: {available: 0, booked: 1}
end
