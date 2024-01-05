class Bank < ApplicationRecord
  validates :name, length: { in: 1..50 }
end
