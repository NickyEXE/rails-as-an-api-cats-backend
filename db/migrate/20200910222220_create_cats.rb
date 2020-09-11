class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :actor
      t.string :description
      t.string :image
      t.belongs_to :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
