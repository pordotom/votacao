class AlterAccountAddVotationId < ActiveRecord::Migration
  def up
    change_table :accounts do |t|
      t.integer :votation_id
    end
  end

  def down
    remove_column :accounts, :votation_id
  end
end
