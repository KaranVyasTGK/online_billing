class Invoice < ApplicationRecord
  belongs_to :client
  has_many :line_items, dependent: :destroy
  accepts_nested_attributes_for :line_items, :allow_destroy => true, reject_if: :all_blank
  after_create :calculate_amount

  enum :status, [:due, :paid, :over_due, :void]


  def calculate_amount
    value = 0
    self.line_items.each do |item|
      value += (item.amount.to_f * item.quntity.to_f)
    end
    self.update_columns(amount: value)
  end
end
