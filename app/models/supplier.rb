class Supplier < ApplicationRecord
  validates :name, :nit, :contact_name, presence: true
  validates :name, length: { minimum: 1 }
end
