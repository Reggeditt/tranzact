class Cashflow < ApplicationRecord
  belongs_to :user
  belongs_to_and_has_many :categories
end
