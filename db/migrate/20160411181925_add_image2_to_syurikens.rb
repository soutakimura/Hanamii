class AddImage2ToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :image2, :text
  end
end
