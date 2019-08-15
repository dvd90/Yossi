class CreateAccepteds < ActiveRecord::Migration[5.2]
  def change
    create_table :accepteds do |t|
      t.references :user, foreign_key: true
      t.references :mesima, foreign_key: true

      t.timestamps
    end
  end
end
