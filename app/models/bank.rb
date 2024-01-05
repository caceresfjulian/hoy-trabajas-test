class Bank < ApplicationRecord
  validates :name, length: { in: 1..50 }, uniqueness: { case_sensitive: false }, presence: true
end
