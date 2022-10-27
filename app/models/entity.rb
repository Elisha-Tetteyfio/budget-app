class Entity < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  validates :name, :amount, :group, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
