class MakeDevHomesSingular < ActiveRecord::Migration[7.1]
  def change
    DevHome.delete_all
    rename_table :dev_home, :dev_home

    add_column :dev_home, :singleton_guard, :boolean, default: true, null: false
    add_index  :dev_home, :singleton_guard, unique: true
  end
end
