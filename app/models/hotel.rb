class Hotel < ApplicationRecord
 belongs_to :hotel_owner
 has_many :rooms
 accepts_nested_attributes_for :rooms, allow_destroy: true,reject_if:nil
 has_many_attached :images
 # validates_presence_of :name,:contact_no,:address
end