class AddContent2ToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :content2, :text
  end
end
