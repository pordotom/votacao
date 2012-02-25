class AlterVotesAddOptionValueId < ActiveRecord::Migration
  def up
    change_table :votes do |t|
      t.integer :option_value_id
    end
  end

  def down
    remove_column :votes, :option_value_id
  end
end
