class RenameWorksToPositions < ActiveRecord::Migration[8.0]
  def change
    rename_table :works, :positions
  end
end
