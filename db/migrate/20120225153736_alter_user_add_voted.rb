class AlterUserAddVoted < ActiveRecord::Migration
  def up
    change_table :accounts do |t|
      t.boolean :voted
    end
  end

  def down
    remove_column :accounts, :voted
  end
end
