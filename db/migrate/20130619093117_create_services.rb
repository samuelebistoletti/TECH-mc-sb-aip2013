class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :procedure
      t.integer :type

      t.timestamps
    end
  end
end
