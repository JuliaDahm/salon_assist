class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :service_name
      t.float :price
      t.text :description
      t.belongs_to :salon 
      t.timestamps null: false
    end
  end
end
