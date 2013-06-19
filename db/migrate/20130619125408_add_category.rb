class AddCategory < ActiveRecord::Migration
  def up
    add_column :products, :category, :string
  end

  def down
  end
end
