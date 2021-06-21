class CreateFoo2s < ActiveRecord::Migration[6.1]
  def change
    create_table :foo2s do |t|
      t.string :foo1
      t.decimal :foo2
      t.integer :foo3
      t.boolean :foo4
      t.text :foo5

      t.timestamps
    end
  end
end
