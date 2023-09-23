class Cashflow < ApplicationRecord
  belongs_to :user
  belongs_to :categories, class_name: 'Category', foreign_key: 'category_id'

  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
