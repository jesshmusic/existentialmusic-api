class CreateEpisodes < ActiveRecord::Migration[8.0]
  def change
    create_table :episodes do |t|
      t.string :title
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end
