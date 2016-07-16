class RemoveUnusedColumnsForAttachinary < ActiveRecord::Migration
  def change
    remove_column :logos, :picture
    remove_column :projects, :picture
    remove_column :projects, :logo
  end
end
