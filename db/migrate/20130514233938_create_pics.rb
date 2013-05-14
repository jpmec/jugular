class CreatePics < ActiveRecord::Migration
  def change
    create_table :pics do |t|
      t.string :title
      t.integer :score
      t.datetime :published_at

      t.timestamps
    end
  end
end
