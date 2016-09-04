class AddColumnActiveToProject < ActiveRecord::Migration
  def change
    add_column :projects, :active, :boolean, default: false
  end
end
