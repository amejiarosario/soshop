class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :user, index: true
      t.string :street_line1
      t.string :stree_line2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country

      t.timestamps
    end
  end
end
