class AddColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :stock, :integer, default: 1
  end
end
