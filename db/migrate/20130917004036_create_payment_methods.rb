class CreatePaymentMethods < ActiveRecord::Migration
  def change
    create_table :payment_methods do |t|
      t.references :user, index: true
      t.string :type
      t.text :options

      t.timestamps
    end
  end
end
