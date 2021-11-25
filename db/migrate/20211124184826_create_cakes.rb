class CreateCakes < ActiveRecord::Migration[6.1]
  def change
    create_table :cakes do |t|
      t.string :name
      t.integer :price
      t.text :intro

      t.timestamps
    end
  end
end
