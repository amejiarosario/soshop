class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true
      t.references :delivery_method, index: true
      t.references :payment_method, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
