class CreateBar39s < ActiveRecord::Migration[6.1]
  def change
    create_table :bar39s do |t|
      t.string :foo1
      t.decimal :foo2
      t.integer :foo3
      t.boolean :foo4
      t.text :foo5

      t.timestamps
    end
  end
end
