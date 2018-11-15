class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.integer :target
      t.integer :savings
      t.string :description
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
