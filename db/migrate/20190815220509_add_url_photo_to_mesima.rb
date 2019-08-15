class AddUrlPhotoToMesima < ActiveRecord::Migration[5.2]
  def change
    add_column :mesimas, :url, :string
  end
end
