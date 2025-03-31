class AddDevHomeToDevProjects < ActiveRecord::Migration[8.0]
  def change
    add_reference :dev_projects, :dev_home, foreign_key: true
  end
end
