class AddExtraToEvents < ActiveRecord::Migration
  def change
    add_column :events, :extra_notes, :text
  end
end
