class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :option

      t.timestamps
    end
    add_index :votes, :option_id
  end
end
