class CreateRolesPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :roles_players do |t|
      t.text :about
      t.date :start_date
      t.integer :position
      t.string :image

      t.timestamps
    end
  end
end
