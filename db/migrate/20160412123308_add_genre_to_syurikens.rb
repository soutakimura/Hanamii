class AddGenreToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :genre, :text
  end
end
