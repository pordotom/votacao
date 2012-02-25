class AlterOptionAddQuantity < ActiveRecord::Migration
  def up
    change_table :options do |t|
      t.integer :quantity
    end
  end

  def down
    remove_column :options, :quantity
  end
end
