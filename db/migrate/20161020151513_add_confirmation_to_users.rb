class AddConfirmationToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :confirmation_at, :datetime
    add_column :users, :confirmation_token, :string
  end
end
