class CreateCashflows < ActiveRecord::Migration[7.0]
  def change
    create_table :cashflows do |t|
      t.references :user, null: false, foreign_key: true, index: true, column: :author_id
      t.string :name, null: false
      t.decimal :amount, null: false, precision: 10, scale: 2
      t.references :category, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
