class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.string :external_link

      t.timestamps
    end
  end
end
