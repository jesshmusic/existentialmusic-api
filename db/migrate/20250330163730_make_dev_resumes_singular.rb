class MakeDevResumesSingular < ActiveRecord::Migration[7.1]
  def change
    DevResume.delete_all
    rename_table :dev_resume, :dev_resume

    add_column :dev_resume, :singleton_guard, :boolean, default: true, null: false
    add_index  :dev_resume, :singleton_guard, unique: true
  end
end

