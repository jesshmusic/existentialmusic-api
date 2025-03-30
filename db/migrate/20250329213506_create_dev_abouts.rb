class CreateDevAbouts < ActiveRecord::Migration[8.0]
  def change
    create_table :dev_about do |t|
      t.string :title
      t.string :subtitle

      t.timestamps
    end
  end
end
