class CreateBrains < ActiveRecord::Migration[6.0]
  def change
    create_table :brains do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :age
      t.string :skill
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
