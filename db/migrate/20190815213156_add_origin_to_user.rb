class AddOriginToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :origin, :string
  end
end
