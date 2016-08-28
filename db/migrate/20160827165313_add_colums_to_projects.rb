class AddColumsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :date, :date
    add_column :projects, :category, :string
  end
end
