class CreateVotations < ActiveRecord::Migration
  def change
    create_table :votations do |t|
      t.string :nome

      t.timestamps
    end
  end
end
