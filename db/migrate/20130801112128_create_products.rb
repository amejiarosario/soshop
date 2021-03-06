class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price, :precision => 8, :scale => 2
      t.has_attached_file :photo
      t.references :user, index: true

      t.timestamps
    end
  end
end
