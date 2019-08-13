class DropUserIdFromPhoneNumbers < ActiveRecord::Migration[5.2]
  def change
    remove_column :phone_numbers, :user_id, :integer
  end
end
