class RenameJoinTable < ActiveRecord::Migration
  def change
    rename_table :resellers_products, :products_resellers
  end

end
