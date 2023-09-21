class Category < ApplicationRecord
    belongs_to :user
    belongs_to_and_has_many :cashflows
end
