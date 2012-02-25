class AlterVotesRemoveOptionId < ActiveRecord::Migration
  def up
    remove_column :votes, :option_id
  end

  def down
    change_table :votes do |t|
      t.integer :option_id
    end
  end
end
