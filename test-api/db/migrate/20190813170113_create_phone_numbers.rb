class CreatePhoneNumbers < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_numbers do |t|
      t.integer :user_id
      t.string :number

      t.timestamps
    end
  end
end
