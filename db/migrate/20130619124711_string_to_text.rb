class StringToText < ActiveRecord::Migration
  def up
    change_column :products, :description, :text
    change_column :products, :specifications, :text
    change_column :partners, :description, :text
    change_column :services, :description, :text
    change_column :services, :procedure, :text
    change_column :events, :description, :text
    change_column :designers, :description, :text
  end

  def down
  end
end
