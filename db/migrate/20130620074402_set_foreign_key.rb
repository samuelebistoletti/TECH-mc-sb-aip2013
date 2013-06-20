class SetForeignKey < ActiveRecord::Migration
  def change
    rename_column :products, :category, :category_id;
    rename_column :products, :designer, :designer_id;
  end

end
