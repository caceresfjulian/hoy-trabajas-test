class Bank < ApplicationRecord
  validates :name, length: { maximum: 50 }, uniqueness: { case_sensitive: false }, presence: true
end
