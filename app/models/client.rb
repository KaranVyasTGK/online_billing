class Client < ApplicationRecord
  has_many :invoices
  validates_uniqueness_of :email
end
