class AddTagsToPics < ActiveRecord::Migration
  def change
    add_column :pics, :tags, :string
  end
end
