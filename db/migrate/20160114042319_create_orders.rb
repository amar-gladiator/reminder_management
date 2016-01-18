class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date

      t.timestamps null: false
    end

    create_table :customers_orders, id: false do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true
    end
  end
end
