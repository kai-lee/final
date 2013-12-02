class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :game_id
      t.string :picture
      t.string :name
      t.string :gtype
      t.integer :rating
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
