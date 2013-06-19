class CreateResellers < ActiveRecord::Migration
  def change
    create_table :resellers do |t|
      t.string :name
      t.string :region
      t.string :province
      t.string :address
      t.string :email
      t.string :telephone

      t.timestamps
    end
  end
end
