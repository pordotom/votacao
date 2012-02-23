class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :nome
      t.belongs_to :votation

      t.timestamps
    end
    add_index :options, :votation_id
  end
end
