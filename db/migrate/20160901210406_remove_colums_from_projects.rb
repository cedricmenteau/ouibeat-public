class RemoveColumsFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :text, :text
    remove_column :projects, :sub_title, :text
  end
end
