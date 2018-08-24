class CreateFavors < ActiveRecord::Migration[5.2]
  def change
    create_table :favors do |t|
      t.references :meal, foreign_key: true
      t.references :japanese, foreign_key: true

      t.timestamps
    end
  end
end
