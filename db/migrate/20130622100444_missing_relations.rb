class MissingRelations < ActiveRecord::Migration
  def change
    create_table :resellers_products do |t|
      t.integer :reseller_id
      t.integer :products_id
    end

    create_table :events_partners do |t|
      t.integer :event_id
      t.integer :partner_id
    end

    add_column :products, :partner_id, :integer
  end

end
