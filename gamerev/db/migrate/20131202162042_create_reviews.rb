class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
	t.string :user_id
      t.text :comment
      t.integer :game_id

      t.timestamps
    end
  end
end
