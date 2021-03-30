class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :game_play, :default => 0
      t.integer :wins, :default => 0
      t.integer :draws, :default => 0
      t.integer :losses, :default => 0
      t.integer :points, :default => 0
      t.integer :user_id

      t.timestamps
    end
  end
end
