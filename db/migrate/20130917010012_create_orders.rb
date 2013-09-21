class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :full_name
      t.string :email
      t.string :card_number
      t.string :security_code
      t.string :expiration_date
      t.references :user, index: true
      t.references :delivery_method, index: true
      t.references :payment_method, index: true
      t.references :product, index: true

      t.timestamps
    end
  end
end
