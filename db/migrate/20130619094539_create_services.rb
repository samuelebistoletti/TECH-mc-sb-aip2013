class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :procedure
      t.string :image_url
      t.integer :service_type

      t.timestamps
    end
  end
end
