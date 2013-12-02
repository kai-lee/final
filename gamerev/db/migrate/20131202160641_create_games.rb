class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :picture
      t.string :name
      t.string :type
      t.integer :rating
      t.text :description
      t.integer :userid

      t.timestamps
    end
  end
end
