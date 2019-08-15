class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :alyah_date, :datetime
    add_column :users, :pita, :integer, default: 0
    add_column :users, :avatar, :string
  end
end
