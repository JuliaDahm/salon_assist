class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.string :salon_name
      t.belongs_to :employees 
      t.timestamps null: false
    end
  end
end
