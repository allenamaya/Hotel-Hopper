class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :room_id
      t.string :date_in 
      t.string :date_out
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
