class AddImage3ToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :image3, :text
  end
end
