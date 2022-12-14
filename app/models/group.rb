class Group < ApplicationRecord
  belongs_to :user
  has_many :entities

  validates :name, :icon, presence: true
end
