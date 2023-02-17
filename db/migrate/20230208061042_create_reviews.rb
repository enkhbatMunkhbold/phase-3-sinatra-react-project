class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :name
      t.text :comment
      t.integer :movie_id
      t.boolean :edit
      t.timestamps
    end
  end
end
