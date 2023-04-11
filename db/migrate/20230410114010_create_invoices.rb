class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :amount
      t.datetime :due_date
      t.integer :status, default: 0
      t.datetime :paid_on
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
