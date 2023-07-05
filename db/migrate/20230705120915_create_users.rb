class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.boolean :in_mailing_list
      t.boolean :terms_and_services

      t.timestamps
    end
  end
end
