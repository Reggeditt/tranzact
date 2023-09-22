class Cashflow < ApplicationRecord
  belongs_to :user
  belongs_to :categories, class_name: 'Category', foreign_key: 'category_id'
end
