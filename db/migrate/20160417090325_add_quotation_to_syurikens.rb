class AddQuotationToSyurikens < ActiveRecord::Migration
  def change
    add_column :syurikens, :quotation, :text
  end
end
