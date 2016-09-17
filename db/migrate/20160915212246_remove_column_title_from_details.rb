class RemoveColumnTitleFromDetails < ActiveRecord::Migration
  def change
    remove_column :details, :title, :string
  end
end
