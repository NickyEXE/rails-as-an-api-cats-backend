class AddTipToCat < ActiveRecord::Migration[6.0]
  def change
    add_column :cats, :tip, :integer, default: 0
  end
end
