class CreateOpenings < ActiveRecord::Migration
  def change
    create_table :openings do |t|
      t.date :opening_date
      t.string :time_and_length
      t.belongs_to :employee 
      t.timestamps null: false
    end
  end
end
