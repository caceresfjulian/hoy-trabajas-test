class Supplier < ApplicationRecord
  validates :name, :nit, :contact_name, presence: true
  validates :nit, format: { with: /\b\d{9}-\d{1}\b|\b\d{9}\b/, message: "should have 9 digits and optionally a dash (-) and a number"}
  validates :contact_phone, { length: { maximum: 10 }}
  validates :account_number, { length: { maximum: 15 }}
end
