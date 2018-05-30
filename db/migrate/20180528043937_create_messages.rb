class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text       :content, null: false
      t.references :room
      t.references :messable, polymorphic: true, index: true, null: false

      t.timestamps null: false
    end
  end
end
