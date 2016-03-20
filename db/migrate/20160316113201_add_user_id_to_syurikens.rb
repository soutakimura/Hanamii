class AddUserIdToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :user_id, :integer
  end
end
