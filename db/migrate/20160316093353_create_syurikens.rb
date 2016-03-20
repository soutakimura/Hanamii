class CreateSyurikens < ActiveRecord::Migration
  def change
    create_table :syurikens do |t|
      t.text :text
      t.text :content
      t.text :image

      t.timestamps
    end
  end
end
