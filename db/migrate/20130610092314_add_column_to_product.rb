class AddColumnToProduct < ActiveRecord::Migration
  def change
    add_column :products, :id_designer, :string
  end
end
