class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
      t.references :user, index: true
      t.string :first_name
      t.string :last_name
      t.string :number, limit: 16
      t.string :month, limit: 2
      t.string :year, limit: 4
      t.string :ccv, limit: 2

      t.timestamps
    end
  end
end
