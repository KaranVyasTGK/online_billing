class CreateLineItems < ActiveRecord::Migration[7.0]
  def change
    create_table :line_items do |t|
      t.text :description
      t.string :amount
      t.string :quntity
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
