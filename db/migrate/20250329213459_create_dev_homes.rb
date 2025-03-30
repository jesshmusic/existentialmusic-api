class CreateDevHomes < ActiveRecord::Migration[8.0]
  def change
    create_table :dev_homes do |t|
      t.string :title

      t.timestamps
    end
  end
end
