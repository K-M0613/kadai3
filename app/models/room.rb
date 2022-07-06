class Room < ApplicationRecord
  has_many :user_rooms
  has_many :chat
end
