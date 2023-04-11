class LineItem < ApplicationRecord
  belongs_to :invoice
  after_save_commit :update_invoice
  after_update :update_invoice
  after_destroy :update_invoice

  def update_invoice
    self.invoice.calculate_amount
  end

end
