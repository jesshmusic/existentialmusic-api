class AddDevHomeToClients < ActiveRecord::Migration[8.0]
  def change
    add_reference :clients, :dev_home, null: false, foreign_key: true
  end
end
