class AddReferencesToTechnologies < ActiveRecord::Migration[8.0]
  def change
    add_reference :technologies, :dev_home, foreign_key: true
    add_reference :technologies, :dev_about, foreign_key: true
    add_reference :technologies, :dev_resume, foreign_key: true
  end
end
