class CorrectColumnError < ActiveRecord::Migration
  def change
    rename_column :resellers_products, :products_id, :product_id
  end

end
