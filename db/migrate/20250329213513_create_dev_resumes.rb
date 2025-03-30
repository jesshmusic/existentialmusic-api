class CreateDevResumes < ActiveRecord::Migration[8.0]
  def change
    create_table :dev_resumes do |t|
      t.string :title
      t.string :name

      t.timestamps
    end
  end
end
