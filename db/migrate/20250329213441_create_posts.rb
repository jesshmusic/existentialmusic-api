class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :spotify_url
      t.string :anchor_url
      t.text :excerpt
      t.datetime :published_at

      t.timestamps
    end
  end
end
