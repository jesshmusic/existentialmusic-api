class MakeDevAboutsSingular < ActiveRecord::Migration[8.0]
  def change
    DevAbout.delete_all
    rename_table :dev_about, :dev_about

    add_column :dev_about, :singleton_guard, :boolean, default: true, null: false
    add_index  :dev_about, :singleton_guard, unique: true
  end
end
