class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :price
      t.boolean :available
      t.belongs_to :salon 
      t.timestamps null: false
    end
  end
end
