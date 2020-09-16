class AddTipsToCat < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :tips, :integer, default: 0
  end
end
