class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :description
      t.string :external_link
      t.string :image_url

      t.timestamps
    end
  end
end
