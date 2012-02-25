class CreateOptionValues < ActiveRecord::Migration
  def change
    create_table :option_values do |t|
      t.belongs_to :option
      t.string :name

      t.timestamps
    end
    add_index :option_values, :option_id
  end
end
