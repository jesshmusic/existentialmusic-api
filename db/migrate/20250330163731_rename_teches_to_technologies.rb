class RenameTechesToTechnologies < ActiveRecord::Migration[8.0]
  def change
    rename_table :teches, :technologies
  end
end
