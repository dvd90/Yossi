class CreateMesimas < ActiveRecord::Migration[5.2]
  def change
    create_table :mesimas do |t|
      t.string :name
      t.text :description
      t.string :status
      t.integer :worth

      t.timestamps
    end
  end
end
