class AddCatIdArticles < ActiveRecord::Migration
  def change
    add_column :articles, :cat_id, :integer
	  add_index :articles, :cat_id
  end
end
