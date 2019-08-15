class MoveStatusToAccepteds < ActiveRecord::Migration[5.2]
  def change
    add_column :accepteds, :status, :string
    remove_column :mesimas, :status
  end
end
