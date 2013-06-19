class AddMissingImageUrls < ActiveRecord::Migration
  def up
    add_column :events, :image_url, :string
    add_column :resellers, :image_url, :string
    add_column :designers, :image_url, :string
  end

end
