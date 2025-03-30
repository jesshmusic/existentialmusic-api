class CreateDevHomes < ActiveRecord::Migration[8.0]
  def change
    create_table :dev_home do |t|
      t.string :title

      t.timestamps
    end
  end
end
