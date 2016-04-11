class AddContent3ToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :content3, :text
  end
end
