class Category < ApplicationRecord
  has_many :cashflows

  validates :name, presence: true
  validates :icon, presence: true
end
