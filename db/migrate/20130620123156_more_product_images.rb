class MoreProductImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :product_id
      t.string :image_url

      t.timestamps
    end
  end
end
