class CreateFoo64s < ActiveRecord::Migration[6.1]
  def change
    create_table :foo64s do |t|
      t.string :foo1
      t.decimal :foo2
      t.integer :foo3
      t.boolean :foo4
      t.text :foo5

      t.timestamps
    end
  end
end
