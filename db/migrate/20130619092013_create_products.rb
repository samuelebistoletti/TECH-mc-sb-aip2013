class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.string :specifications
      t.integer :designer

      t.timestamps
    end
  end
end
