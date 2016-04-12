class AddPrefectureToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :prefecture, :text
  end
end
