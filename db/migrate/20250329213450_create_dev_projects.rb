class CreateDevProjects < ActiveRecord::Migration[8.0]
  def change
    create_table :dev_projects do |t|
      t.string :title
      t.string :slug
      t.string :subtitle
      t.string :link
      t.text :excerpt

      t.timestamps
    end
  end
end
