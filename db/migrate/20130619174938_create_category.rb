class CreateCategory < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end
    change_column :products, :category, :integer;
  end
end
