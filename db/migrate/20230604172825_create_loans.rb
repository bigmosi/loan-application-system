class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.string :name
      t.string :email
      t.decimal :amount
      t.integer :duration
      t.string :status

      t.timestamps
    end
  end
end
