class CreateWorks < ActiveRecord::Migration[8.0]
  def change
    create_table :works do |t|
      t.string :company
      t.string :role
      t.text :description
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
