class AddCategoryToMesimas < ActiveRecord::Migration[5.2]
  def change
    add_column :mesimas, :category, :string
  end
end
